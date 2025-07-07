import "dart:convert";
import "dart:io";

import "package:mln_server/generated.dart";
import "package:serverpod/serverpod.dart";

typedef Json = Map<String, dynamic>;

extension HttpUtils on HttpRequest {
  Future<String> body() => utf8.decodeStream(this);
  Future<Json> toJson() async => Json.from(jsonDecode(await body()));
  WidgetJson respond(int status, [Object? body]) {
    response.statusCode = status;
    return WidgetJson(object: body);
  }
}

extension SessionUtils on Session {
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
