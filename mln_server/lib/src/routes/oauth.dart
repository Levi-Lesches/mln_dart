import "dart:io";

import 'package:serverpod/serverpod.dart';
import "package:mln_server/generated.dart";

import "utils.dart";

extension on Session {
  Future<OAuthCode?> getOAuthCode(String raw) => OAuthCode.db.findFirstRow(
    this,
    where: (code) => code.authCode.equals(raw),
    include: OAuthCode.include(
      client: OAuthClient.include(),
      user: User.include(),
    ),
  );

  Future<OAuthClient?> getOAuthClient(String clientID) =>
    OAuthClient.db.findFirstRow(this, where: (client) => client.clientID.equals(clientID));

  Future<OAuthClient> createOAuthClient(String clientID) =>
    OAuthClient.db.insertRow(this, OAuthClient(clientID: clientID, clientName: "Test client", clientSecret: "client_secret", imageUrl: "google.com/image"));
}

class OAuthLoginRoute extends WidgetRoute {
  @override
  Future<AbstractWidget> build(Session session, HttpRequest request) async {
    final data = await request.toJson();
    final username = data["username"];
    final clientID = data["client_id"];
    final sessionID = data["session_id"];
    final redirectUrl = data["redirect_url"];
    final user = await session.getUser(username);
    final client = await session.getOAuthClient(clientID) ?? await session.createOAuthClient(clientID);
    final authCodeRaw = "321";
    final generatedAt = DateTime.now();
    final authCode = OAuthCode(userId: user!.id!, authCode: authCodeRaw, clientId: client.id!, generatedAt: generatedAt);
    await OAuthCode.db.insertRow(session, authCode);
    final url = "$redirectUrl?session_id=$sessionID&auth_code=$authCodeRaw";
    return WidgetJson(object: url);
  }
}

class OAuthTokenRoute extends WidgetRoute {
  @override
  Future<WidgetJson> build(Session session, HttpRequest request) async {
    final data = await request.toJson();
    final apiToken = data["api_token"] as String?;
    final authCodeRaw = data["auth_code"] as String?;
    if (apiToken == null || authCodeRaw == null) {
      return request.respond(400, "Missing API token or auth code");
    }

    final authCode = await session.getOAuthCode(authCodeRaw);
    if (authCode == null) return request.respond(404);

    final client = authCode.client!;
    if (apiToken != client.clientSecret) return request.respond(401);

    final elapsedTime = DateTime.now().difference(authCode.generatedAt);
    if (elapsedTime > Duration(minutes: 10)) return request.respond(403);

    final accessTokenRaw = "Hello";
    final user = authCode.user!;
    final accessToken = OAuthToken(accessToken: accessTokenRaw, userId: user.id!, clientId: client.id!);
    await OAuthToken.db.insertRow(session, accessToken);

    final body = {
      "access_token": accessTokenRaw,
      "username": user.username,
    };
    return WidgetJson(object: body);
  }
}
