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
import 'message_body.dart' as _i3;

abstract class Message implements _i1.SerializableModel {
  Message._({
    this.id,
    required this.senderId,
    this.sender,
    required this.reipientId,
    this.reipient,
    required this.bodyId,
    this.body,
  });

  factory Message({
    int? id,
    required int senderId,
    _i2.User? sender,
    required int reipientId,
    _i2.User? reipient,
    required int bodyId,
    _i3.MessageBody? body,
  }) = _MessageImpl;

  factory Message.fromJson(Map<String, dynamic> jsonSerialization) {
    return Message(
      id: jsonSerialization['id'] as int?,
      senderId: jsonSerialization['senderId'] as int,
      sender: jsonSerialization['sender'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['sender'] as Map<String, dynamic>)),
      reipientId: jsonSerialization['reipientId'] as int,
      reipient: jsonSerialization['reipient'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['reipient'] as Map<String, dynamic>)),
      bodyId: jsonSerialization['bodyId'] as int,
      body: jsonSerialization['body'] == null
          ? null
          : _i3.MessageBody.fromJson(
              (jsonSerialization['body'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int senderId;

  _i2.User? sender;

  int reipientId;

  _i2.User? reipient;

  int bodyId;

  _i3.MessageBody? body;

  /// Returns a shallow copy of this [Message]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Message copyWith({
    int? id,
    int? senderId,
    _i2.User? sender,
    int? reipientId,
    _i2.User? reipient,
    int? bodyId,
    _i3.MessageBody? body,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'senderId': senderId,
      if (sender != null) 'sender': sender?.toJson(),
      'reipientId': reipientId,
      if (reipient != null) 'reipient': reipient?.toJson(),
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

class _MessageImpl extends Message {
  _MessageImpl({
    int? id,
    required int senderId,
    _i2.User? sender,
    required int reipientId,
    _i2.User? reipient,
    required int bodyId,
    _i3.MessageBody? body,
  }) : super._(
          id: id,
          senderId: senderId,
          sender: sender,
          reipientId: reipientId,
          reipient: reipient,
          bodyId: bodyId,
          body: body,
        );

  /// Returns a shallow copy of this [Message]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Message copyWith({
    Object? id = _Undefined,
    int? senderId,
    Object? sender = _Undefined,
    int? reipientId,
    Object? reipient = _Undefined,
    int? bodyId,
    Object? body = _Undefined,
  }) {
    return Message(
      id: id is int? ? id : this.id,
      senderId: senderId ?? this.senderId,
      sender: sender is _i2.User? ? sender : this.sender?.copyWith(),
      reipientId: reipientId ?? this.reipientId,
      reipient: reipient is _i2.User? ? reipient : this.reipient?.copyWith(),
      bodyId: bodyId ?? this.bodyId,
      body: body is _i3.MessageBody? ? body : this.body?.copyWith(),
    );
  }
}
