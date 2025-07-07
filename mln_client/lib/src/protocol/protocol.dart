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
import 'greeting.dart' as _i2;
import 'item_info.dart' as _i3;
import 'message.dart' as _i4;
import 'message_attachment.dart' as _i5;
import 'message_body.dart' as _i6;
import 'message_template.dart' as _i7;
import 'profile.dart' as _i8;
import 'template_attachments.dart' as _i9;
import 'user.dart' as _i10;
export 'greeting.dart';
export 'item_info.dart';
export 'message.dart';
export 'message_attachment.dart';
export 'message_body.dart';
export 'message_template.dart';
export 'profile.dart';
export 'template_attachments.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Greeting) {
      return _i2.Greeting.fromJson(data) as T;
    }
    if (t == _i3.ItemInfo) {
      return _i3.ItemInfo.fromJson(data) as T;
    }
    if (t == _i4.Message) {
      return _i4.Message.fromJson(data) as T;
    }
    if (t == _i5.MessageAttachment) {
      return _i5.MessageAttachment.fromJson(data) as T;
    }
    if (t == _i6.MessageBody) {
      return _i6.MessageBody.fromJson(data) as T;
    }
    if (t == _i7.MessageTemplate) {
      return _i7.MessageTemplate.fromJson(data) as T;
    }
    if (t == _i8.Profile) {
      return _i8.Profile.fromJson(data) as T;
    }
    if (t == _i9.MessageTemplateAttachment) {
      return _i9.MessageTemplateAttachment.fromJson(data) as T;
    }
    if (t == _i10.User) {
      return _i10.User.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Greeting?>()) {
      return (data != null ? _i2.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.ItemInfo?>()) {
      return (data != null ? _i3.ItemInfo.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Message?>()) {
      return (data != null ? _i4.Message.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.MessageAttachment?>()) {
      return (data != null ? _i5.MessageAttachment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.MessageBody?>()) {
      return (data != null ? _i6.MessageBody.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.MessageTemplate?>()) {
      return (data != null ? _i7.MessageTemplate.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Profile?>()) {
      return (data != null ? _i8.Profile.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.MessageTemplateAttachment?>()) {
      return (data != null
          ? _i9.MessageTemplateAttachment.fromJson(data)
          : null) as T;
    }
    if (t == _i1.getType<_i10.User?>()) {
      return (data != null ? _i10.User.fromJson(data) : null) as T;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Greeting) {
      return 'Greeting';
    }
    if (data is _i3.ItemInfo) {
      return 'ItemInfo';
    }
    if (data is _i4.Message) {
      return 'Message';
    }
    if (data is _i5.MessageAttachment) {
      return 'MessageAttachment';
    }
    if (data is _i6.MessageBody) {
      return 'MessageBody';
    }
    if (data is _i7.MessageTemplate) {
      return 'MessageTemplate';
    }
    if (data is _i8.Profile) {
      return 'Profile';
    }
    if (data is _i9.MessageTemplateAttachment) {
      return 'MessageTemplateAttachment';
    }
    if (data is _i10.User) {
      return 'User';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i2.Greeting>(data['data']);
    }
    if (dataClassName == 'ItemInfo') {
      return deserialize<_i3.ItemInfo>(data['data']);
    }
    if (dataClassName == 'Message') {
      return deserialize<_i4.Message>(data['data']);
    }
    if (dataClassName == 'MessageAttachment') {
      return deserialize<_i5.MessageAttachment>(data['data']);
    }
    if (dataClassName == 'MessageBody') {
      return deserialize<_i6.MessageBody>(data['data']);
    }
    if (dataClassName == 'MessageTemplate') {
      return deserialize<_i7.MessageTemplate>(data['data']);
    }
    if (dataClassName == 'Profile') {
      return deserialize<_i8.Profile>(data['data']);
    }
    if (dataClassName == 'MessageTemplateAttachment') {
      return deserialize<_i9.MessageTemplateAttachment>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i10.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
