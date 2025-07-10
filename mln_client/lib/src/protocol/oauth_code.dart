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

abstract class OAuthCode implements _i1.SerializableModel {
  OAuthCode._({
    this.id,
    required this.userId,
    this.user,
    required this.authCode,
    required this.clientId,
    this.client,
    required this.generatedAt,
  });

  factory OAuthCode({
    int? id,
    required int userId,
    _i2.User? user,
    required String authCode,
    required int clientId,
    _i3.OAuthClient? client,
    required DateTime generatedAt,
  }) = _OAuthCodeImpl;

  factory OAuthCode.fromJson(Map<String, dynamic> jsonSerialization) {
    return OAuthCode(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      authCode: jsonSerialization['authCode'] as String,
      clientId: jsonSerialization['clientId'] as int,
      client: jsonSerialization['client'] == null
          ? null
          : _i3.OAuthClient.fromJson(
              (jsonSerialization['client'] as Map<String, dynamic>)),
      generatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['generatedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  _i2.User? user;

  String authCode;

  int clientId;

  _i3.OAuthClient? client;

  DateTime generatedAt;

  /// Returns a shallow copy of this [OAuthCode]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  OAuthCode copyWith({
    int? id,
    int? userId,
    _i2.User? user,
    String? authCode,
    int? clientId,
    _i3.OAuthClient? client,
    DateTime? generatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'authCode': authCode,
      'clientId': clientId,
      if (client != null) 'client': client?.toJson(),
      'generatedAt': generatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OAuthCodeImpl extends OAuthCode {
  _OAuthCodeImpl({
    int? id,
    required int userId,
    _i2.User? user,
    required String authCode,
    required int clientId,
    _i3.OAuthClient? client,
    required DateTime generatedAt,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          authCode: authCode,
          clientId: clientId,
          client: client,
          generatedAt: generatedAt,
        );

  /// Returns a shallow copy of this [OAuthCode]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  OAuthCode copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    String? authCode,
    int? clientId,
    Object? client = _Undefined,
    DateTime? generatedAt,
  }) {
    return OAuthCode(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      authCode: authCode ?? this.authCode,
      clientId: clientId ?? this.clientId,
      client: client is _i3.OAuthClient? ? client : this.client?.copyWith(),
      generatedAt: generatedAt ?? this.generatedAt,
    );
  }
}
