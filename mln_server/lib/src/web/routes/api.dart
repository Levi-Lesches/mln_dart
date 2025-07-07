import 'dart:convert';
import 'dart:io';

import 'package:serverpod/serverpod.dart';

typedef Json = Map<String, dynamic>;

extension on HttpRequest {
  Future<String> body() => utf8.decodeStream(this);
  Future<Json> toJson() async => Json.from(jsonDecode(await body()));
}

class ApiRoute extends WidgetRoute {
  @override
  Future<WidgetJson> build(Session session, HttpRequest request) async {
    session.log("Someone called API");
    final data = await request.toJson();
    final name = data['name'] as String;
    return WidgetJson(object: {"your_name": name});
  }
}
