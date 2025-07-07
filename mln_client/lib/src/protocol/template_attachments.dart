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
import 'message_template.dart' as _i2;
import 'item_info.dart' as _i3;

abstract class MessageTemplateAttachment implements _i1.SerializableModel {
  MessageTemplateAttachment._({
    this.id,
    required this.templateId,
    this.template,
    required this.itemId,
    this.item,
    required this.qty,
  });

  factory MessageTemplateAttachment({
    int? id,
    required int templateId,
    _i2.MessageTemplate? template,
    required int itemId,
    _i3.ItemInfo? item,
    required int qty,
  }) = _MessageTemplateAttachmentImpl;

  factory MessageTemplateAttachment.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return MessageTemplateAttachment(
      id: jsonSerialization['id'] as int?,
      templateId: jsonSerialization['templateId'] as int,
      template: jsonSerialization['template'] == null
          ? null
          : _i2.MessageTemplate.fromJson(
              (jsonSerialization['template'] as Map<String, dynamic>)),
      itemId: jsonSerialization['itemId'] as int,
      item: jsonSerialization['item'] == null
          ? null
          : _i3.ItemInfo.fromJson(
              (jsonSerialization['item'] as Map<String, dynamic>)),
      qty: jsonSerialization['qty'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int templateId;

  _i2.MessageTemplate? template;

  int itemId;

  _i3.ItemInfo? item;

  int qty;

  /// Returns a shallow copy of this [MessageTemplateAttachment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MessageTemplateAttachment copyWith({
    int? id,
    int? templateId,
    _i2.MessageTemplate? template,
    int? itemId,
    _i3.ItemInfo? item,
    int? qty,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'templateId': templateId,
      if (template != null) 'template': template?.toJson(),
      'itemId': itemId,
      if (item != null) 'item': item?.toJson(),
      'qty': qty,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MessageTemplateAttachmentImpl extends MessageTemplateAttachment {
  _MessageTemplateAttachmentImpl({
    int? id,
    required int templateId,
    _i2.MessageTemplate? template,
    required int itemId,
    _i3.ItemInfo? item,
    required int qty,
  }) : super._(
          id: id,
          templateId: templateId,
          template: template,
          itemId: itemId,
          item: item,
          qty: qty,
        );

  /// Returns a shallow copy of this [MessageTemplateAttachment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MessageTemplateAttachment copyWith({
    Object? id = _Undefined,
    int? templateId,
    Object? template = _Undefined,
    int? itemId,
    Object? item = _Undefined,
    int? qty,
  }) {
    return MessageTemplateAttachment(
      id: id is int? ? id : this.id,
      templateId: templateId ?? this.templateId,
      template: template is _i2.MessageTemplate?
          ? template
          : this.template?.copyWith(),
      itemId: itemId ?? this.itemId,
      item: item is _i3.ItemInfo? ? item : this.item?.copyWith(),
      qty: qty ?? this.qty,
    );
  }
}
