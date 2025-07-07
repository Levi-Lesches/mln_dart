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
