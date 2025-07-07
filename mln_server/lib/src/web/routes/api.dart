import 'dart:convert';
import 'dart:io';
import '../../generated/protocol.dart';

import 'package:serverpod/serverpod.dart';

typedef Json = Map<String, dynamic>;

extension on HttpRequest {
  Future<String> body() => utf8.decodeStream(this);
  Future<Json> toJson() async => Json.from(jsonDecode(await body()));
  WidgetJson respond(int status, Json? body) {
    response.statusCode = status;
    return WidgetJson(object: body);
  }
}

class CreateRoute extends WidgetRoute {
  @override
  Future<WidgetJson> build(Session session, HttpRequest request) async {
    User? user = await User.db.findById(session, 1);
    if (user != null) return request.respond(201, null);
    user = User(username: "levi", id: 1);
    user = await User.db.insertRow(session, user);
    final profile = Profile(isNetworker: true, user: user, userId: user.id!);
    await Profile.db.insertRow(session, profile);
    return request.respond(201, null);
  }
}

extension on Session {
  Future<User?> getUser(String username) =>
    User.db.findFirstRow(this, where: (user) => user.username.equals(username));

  Future<User> createUser(String username) =>
    User.db.insertRow(this, User(username: username));

  Future<MessageBody?> getBody(String subject) =>
    MessageBody.db.findFirstRow(this, where: (body) => body.subject.equals(subject));

  Future<MessageBody> createBody(String subject, String text) =>
    MessageBody.db.insertRow(this, MessageBody(subject: subject, text: text));

  Future<ItemInfo?> getItem(String name) =>
    ItemInfo.db.findFirstRow(this, where: (item) => item.name.equals(name));

  Future<ItemInfo> createItem(String name) =>
    ItemInfo.db.insertRow(this, ItemInfo(name: name));
}

class SendRoute extends WidgetRoute {
  @override
  Future<WidgetJson> build(Session session, HttpRequest request) async {
    final json = await request.toJson();
    final from = json["from"]!;
    final to = json["to"]!;
    final subject = json["subject"]!;
    final text = json["text"]!;
    final itemName = json["item"]!;
    final qty = json["qty"]! as int;

    final fromUser = await session.getUser(from) ?? await session.createUser(from);
    final toUser = await session.getUser(to) ?? await session.createUser(to);
    final body = await session.getBody(subject) ?? await session.createBody(subject, text);
    final item = await session.getItem(itemName) ?? await session.createItem(itemName);
    var message = Message(senderId: fromUser.id!, reipientId: toUser.id!, bodyId: body.id!);
    message = await Message.db.insertRow(session, message);
    var attachment = MessageAttachment(itemId: item.id!, messageId: message.id!, qty: qty);
    attachment = await MessageAttachment.db.insertRow(session, attachment);
    return request.respond(201, {"message_id": message.id!, "attachment": attachment.toJson(), "message": message.toJson()});
  }
}

class InboxRoute extends WidgetRoute {
  @override
  Future<WidgetJson> build(Session session, HttpRequest request) async {
    final data = await request.toJson();
    final username = data["username"]!;
    final messages = await MessageAttachment.db.find(
      session,
      where: (attachment) => attachment.message.reipient.username.equals(username),
      // where: (message) => message.reipient.username.equals(username),
      include: MessageAttachment.include(
        item: ItemInfo.include(),
        message: Message.include(
          sender: User.include(),
          reipient: User.include(),
          body: MessageBody.include(),
        ),
      ),
    );
    return WidgetJson(object: [
      for (final message in messages)
        message.toJson(),
    ]);
  }
}

class ApiRoute extends WidgetRoute {
  @override
  Future<WidgetJson> build(Session session, HttpRequest request) async {
    final data = await request.toJson();
    final name = data['name'] as String;
    final user = await User.db.findFirstRow(session, where: (table) => table.username.equals(name));
    if (user == null) {
      final body = {"error": "user $name not found"};
      return request.respond(404, body);
    }
    final profile = await Profile.db.findFirstRow(session, where: (profile) => profile.userId.equals(user.id));
    if (profile == null) {
      final body = {"error": "Profile not found for user $name"};
      return request.respond(500, body);
    }
    return WidgetJson(object: {"found_users": profile});
  }
}
