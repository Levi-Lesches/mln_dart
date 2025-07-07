import 'dart:io';

import 'package:collection/collection.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

import "package:mln_server/generated.dart";
import "utils.dart";

// A sample password as a hash
const hash = r"$argon2id$9xlumg6kfxRdHOwL$D+D6j/yNpl0/owSdPMX3hbRsfZyo2Z/lsp08fRwzILS4Thag2FA0iN3FSfKsfTSqhyFYRt0K/h/f64JnWxU9LG/BSOfEI/Gn9E6IbB1m+LYdWf7QyNCIqw85o7p4dj44dOluI+XCBj7YwtrXPgstAbMDQPaoWTux2yto/DPiotjkTfor/jM5xCWKp1kR5Z7W2NdkKD41++a3vJsuJWyVXEd691pU9n5W+JE6DL3/JsyjOJRcIjVx2L8I96SRo8IIq3iQDC4qhRh+m1jZ1w6NPt4Nv064EZO7PafKRDaqKMuINXINbhFdYGNZxIvNiGDq1LyTzuVnwm6Nvc2Hb0m2OQ==";
final cookies = <String, User>{};

class AuthRoute extends WidgetRoute {
  @override
  Future<WidgetJson> build(Session session, HttpRequest request) async {
    final data = await request.toJson();
    final username = data["username"]! as String;
    final password = data["password"]! as String;
    final config = AuthConfig.current;
    final isValid = await config.passwordHashValidator(password, username, hash);
    if (!isValid) return request.respond(401, "Invalid credentials");
    final user = await session.getUser(username);
    final auth = await UserAuthentication.signInUser(session, user!.id!, "password");
    final key = auth.key!;
    cookies[key] = user;
    request.response.cookies.add(Cookie("sessionid", key));
    return WidgetJson(object: auth.toJson());
  }
}

class AuthTestRoute extends WidgetRoute {
  @override
  Future<WidgetJson> build(Session session, HttpRequest request) async {
    final cookie = request.cookies.firstWhereOrNull((cookie) => cookie.name == "sessionid");
    if (cookie == null) return request.respond(401);
    final user = cookies[cookie.value];
    if (user == null) return request.respond(401);
    return request.respond(200, user.toJson());
  }
}
