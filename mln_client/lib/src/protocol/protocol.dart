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
import 'oauth_client.dart' as _i8;
import 'oauth_code.dart' as _i9;
import 'oauth_token.dart' as _i10;
import 'profile.dart' as _i11;
import 'template_attachments.dart' as _i12;
import 'user.dart' as _i13;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i14;
export 'greeting.dart';
export 'item_info.dart';
export 'message.dart';
export 'message_attachment.dart';
export 'message_body.dart';
export 'message_template.dart';
export 'oauth_client.dart';
export 'oauth_code.dart';
export 'oauth_token.dart';
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
    if (t == _i8.OAuthClient) {
      return _i8.OAuthClient.fromJson(data) as T;
    }
    if (t == _i9.OAuthCode) {
      return _i9.OAuthCode.fromJson(data) as T;
    }
    if (t == _i10.OAuthToken) {
      return _i10.OAuthToken.fromJson(data) as T;
    }
    if (t == _i11.Profile) {
      return _i11.Profile.fromJson(data) as T;
    }
    if (t == _i12.MessageTemplateAttachment) {
      return _i12.MessageTemplateAttachment.fromJson(data) as T;
    }
    if (t == _i13.User) {
      return _i13.User.fromJson(data) as T;
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
    if (t == _i1.getType<_i8.OAuthClient?>()) {
      return (data != null ? _i8.OAuthClient.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.OAuthCode?>()) {
      return (data != null ? _i9.OAuthCode.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.OAuthToken?>()) {
      return (data != null ? _i10.OAuthToken.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Profile?>()) {
      return (data != null ? _i11.Profile.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.MessageTemplateAttachment?>()) {
      return (data != null
          ? _i12.MessageTemplateAttachment.fromJson(data)
          : null) as T;
    }
    if (t == _i1.getType<_i13.User?>()) {
      return (data != null ? _i13.User.fromJson(data) : null) as T;
    }
    try {
      return _i14.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
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
    if (data is _i8.OAuthClient) {
      return 'OAuthClient';
    }
    if (data is _i9.OAuthCode) {
      return 'OAuthCode';
    }
    if (data is _i10.OAuthToken) {
      return 'OAuthToken';
    }
    if (data is _i11.Profile) {
      return 'Profile';
    }
    if (data is _i12.MessageTemplateAttachment) {
      return 'MessageTemplateAttachment';
    }
    if (data is _i13.User) {
      return 'User';
    }
    className = _i14.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
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
    if (dataClassName == 'OAuthClient') {
      return deserialize<_i8.OAuthClient>(data['data']);
    }
    if (dataClassName == 'OAuthCode') {
      return deserialize<_i9.OAuthCode>(data['data']);
    }
    if (dataClassName == 'OAuthToken') {
      return deserialize<_i10.OAuthToken>(data['data']);
    }
    if (dataClassName == 'Profile') {
      return deserialize<_i11.Profile>(data['data']);
    }
    if (dataClassName == 'MessageTemplateAttachment') {
      return deserialize<_i12.MessageTemplateAttachment>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i13.User>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i14.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
