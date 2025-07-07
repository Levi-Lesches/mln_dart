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
import 'message_body.dart' as _i2;

abstract class MessageTemplate implements _i1.SerializableModel {
  MessageTemplate._({
    this.id,
    required this.bodyId,
    this.body,
  });

  factory MessageTemplate({
    int? id,
    required int bodyId,
    _i2.MessageBody? body,
  }) = _MessageTemplateImpl;

  factory MessageTemplate.fromJson(Map<String, dynamic> jsonSerialization) {
    return MessageTemplate(
      id: jsonSerialization['id'] as int?,
      bodyId: jsonSerialization['bodyId'] as int,
      body: jsonSerialization['body'] == null
          ? null
          : _i2.MessageBody.fromJson(
              (jsonSerialization['body'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int bodyId;

  _i2.MessageBody? body;

  /// Returns a shallow copy of this [MessageTemplate]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MessageTemplate copyWith({
    int? id,
    int? bodyId,
    _i2.MessageBody? body,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'bodyId': bodyId,
      if (body != null) 'body': body?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MessageTemplateImpl extends MessageTemplate {
  _MessageTemplateImpl({
    int? id,
    required int bodyId,
    _i2.MessageBody? body,
  }) : super._(
          id: id,
          bodyId: bodyId,
          body: body,
        );

  /// Returns a shallow copy of this [MessageTemplate]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MessageTemplate copyWith({
    Object? id = _Undefined,
    int? bodyId,
    Object? body = _Undefined,
  }) {
    return MessageTemplate(
      id: id is int? ? id : this.id,
      bodyId: bodyId ?? this.bodyId,
      body: body is _i2.MessageBody? ? body : this.body?.copyWith(),
    );
  }
}
