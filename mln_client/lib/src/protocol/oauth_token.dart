/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'user.dart' as _i2;
import 'oauth_client.dart' as _i3;

abstract class OAuthToken implements _i1.SerializableModel {
  OAuthToken._({
    this.id,
    required this.accessToken,
    required this.userId,
    this.user,
    required this.clientId,
    this.client,
  });

  factory OAuthToken({
    int? id,
    required String accessToken,
    required int userId,
    _i2.User? user,
    required int clientId,
    _i3.OAuthClient? client,
  }) = _OAuthTokenImpl;

  factory OAuthToken.fromJson(Map<String, dynamic> jsonSerialization) {
    return OAuthToken(
      id: jsonSerialization['id'] as int?,
      accessToken: jsonSerialization['accessToken'] as String,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      clientId: jsonSerialization['clientId'] as int,
      client: jsonSerialization['client'] == null
          ? null
          : _i3.OAuthClient.fromJson(
              (jsonSerialization['client'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String accessToken;

  int userId;

  _i2.User? user;

  int clientId;

  _i3.OAuthClient? client;

  /// Returns a shallow copy of this [OAuthToken]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  OAuthToken copyWith({
    int? id,
    String? accessToken,
    int? userId,
    _i2.User? user,
    int? clientId,
    _i3.OAuthClient? client,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'accessToken': accessToken,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'clientId': clientId,
      if (client != null) 'client': client?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OAuthTokenImpl extends OAuthToken {
  _OAuthTokenImpl({
    int? id,
    required String accessToken,
    required int userId,
    _i2.User? user,
    required int clientId,
    _i3.OAuthClient? client,
  }) : super._(
          id: id,
          accessToken: accessToken,
          userId: userId,
          user: user,
          clientId: clientId,
          client: client,
        );

  /// Returns a shallow copy of this [OAuthToken]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  OAuthToken copyWith({
    Object? id = _Undefined,
    String? accessToken,
    int? userId,
    Object? user = _Undefined,
    int? clientId,
    Object? client = _Undefined,
  }) {
    return OAuthToken(
      id: id is int? ? id : this.id,
      accessToken: accessToken ?? this.accessToken,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      clientId: clientId ?? this.clientId,
      client: client is _i3.OAuthClient? ? client : this.client?.copyWith(),
    );
  }
}
