import 'dart:io';

import 'package:serverpod/serverpod.dart';
import "package:mln_server/generated.dart";

import "utils.dart";

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
