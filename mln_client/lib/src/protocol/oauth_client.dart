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

abstract class OAuthClient implements _i1.SerializableModel {
  OAuthClient._({
    this.id,
    required this.clientID,
    required this.clientName,
    required this.clientSecret,
    required this.imageUrl,
  });

  factory OAuthClient({
    int? id,
    required String clientID,
    required String clientName,
    required String clientSecret,
    required String imageUrl,
  }) = _OAuthClientImpl;

  factory OAuthClient.fromJson(Map<String, dynamic> jsonSerialization) {
    return OAuthClient(
      id: jsonSerialization['id'] as int?,
      clientID: jsonSerialization['clientID'] as String,
      clientName: jsonSerialization['clientName'] as String,
      clientSecret: jsonSerialization['clientSecret'] as String,
      imageUrl: jsonSerialization['imageUrl'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String clientID;

  String clientName;

  String clientSecret;

  String imageUrl;

  /// Returns a shallow copy of this [OAuthClient]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  OAuthClient copyWith({
    int? id,
    String? clientID,
    String? clientName,
    String? clientSecret,
    String? imageUrl,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'clientID': clientID,
      'clientName': clientName,
      'clientSecret': clientSecret,
      'imageUrl': imageUrl,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OAuthClientImpl extends OAuthClient {
  _OAuthClientImpl({
    int? id,
    required String clientID,
    required String clientName,
    required String clientSecret,
    required String imageUrl,
  }) : super._(
          id: id,
          clientID: clientID,
          clientName: clientName,
          clientSecret: clientSecret,
          imageUrl: imageUrl,
        );

  /// Returns a shallow copy of this [OAuthClient]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  OAuthClient copyWith({
    Object? id = _Undefined,
    String? clientID,
    String? clientName,
    String? clientSecret,
    String? imageUrl,
  }) {
    return OAuthClient(
      id: id is int? ? id : this.id,
      clientID: clientID ?? this.clientID,
      clientName: clientName ?? this.clientName,
      clientSecret: clientSecret ?? this.clientSecret,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}
