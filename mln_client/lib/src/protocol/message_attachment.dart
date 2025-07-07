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
import 'item_info.dart' as _i2;
import 'message.dart' as _i3;

abstract class MessageAttachment implements _i1.SerializableModel {
  MessageAttachment._({
    this.id,
    required this.itemId,
    this.item,
    required this.qty,
    required this.messageId,
    this.message,
  });

  factory MessageAttachment({
    int? id,
    required int itemId,
    _i2.ItemInfo? item,
    required int qty,
    required int messageId,
    _i3.Message? message,
  }) = _MessageAttachmentImpl;

  factory MessageAttachment.fromJson(Map<String, dynamic> jsonSerialization) {
    return MessageAttachment(
      id: jsonSerialization['id'] as int?,
      itemId: jsonSerialization['itemId'] as int,
      item: jsonSerialization['item'] == null
          ? null
          : _i2.ItemInfo.fromJson(
              (jsonSerialization['item'] as Map<String, dynamic>)),
      qty: jsonSerialization['qty'] as int,
      messageId: jsonSerialization['messageId'] as int,
      message: jsonSerialization['message'] == null
          ? null
          : _i3.Message.fromJson(
              (jsonSerialization['message'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int itemId;

  _i2.ItemInfo? item;

  int qty;

  int messageId;

  _i3.Message? message;

  /// Returns a shallow copy of this [MessageAttachment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MessageAttachment copyWith({
    int? id,
    int? itemId,
    _i2.ItemInfo? item,
    int? qty,
    int? messageId,
    _i3.Message? message,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'itemId': itemId,
      if (item != null) 'item': item?.toJson(),
      'qty': qty,
      'messageId': messageId,
      if (message != null) 'message': message?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MessageAttachmentImpl extends MessageAttachment {
  _MessageAttachmentImpl({
    int? id,
    required int itemId,
    _i2.ItemInfo? item,
    required int qty,
    required int messageId,
    _i3.Message? message,
  }) : super._(
          id: id,
          itemId: itemId,
          item: item,
          qty: qty,
          messageId: messageId,
          message: message,
        );

  /// Returns a shallow copy of this [MessageAttachment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MessageAttachment copyWith({
    Object? id = _Undefined,
    int? itemId,
    Object? item = _Undefined,
    int? qty,
    int? messageId,
    Object? message = _Undefined,
  }) {
    return MessageAttachment(
      id: id is int? ? id : this.id,
      itemId: itemId ?? this.itemId,
      item: item is _i2.ItemInfo? ? item : this.item?.copyWith(),
      qty: qty ?? this.qty,
      messageId: messageId ?? this.messageId,
      message: message is _i3.Message? ? message : this.message?.copyWith(),
    );
  }
}
