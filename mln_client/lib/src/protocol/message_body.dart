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

abstract class MessageBody implements _i1.SerializableModel {
  MessageBody._({
    this.id,
    required this.subject,
    required this.text,
  });

  factory MessageBody({
    int? id,
    required String subject,
    required String text,
  }) = _MessageBodyImpl;

  factory MessageBody.fromJson(Map<String, dynamic> jsonSerialization) {
    return MessageBody(
      id: jsonSerialization['id'] as int?,
      subject: jsonSerialization['subject'] as String,
      text: jsonSerialization['text'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String subject;

  String text;

  /// Returns a shallow copy of this [MessageBody]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MessageBody copyWith({
    int? id,
    String? subject,
    String? text,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'subject': subject,
      'text': text,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MessageBodyImpl extends MessageBody {
  _MessageBodyImpl({
    int? id,
    required String subject,
    required String text,
  }) : super._(
          id: id,
          subject: subject,
          text: text,
        );

  /// Returns a shallow copy of this [MessageBody]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MessageBody copyWith({
    Object? id = _Undefined,
    String? subject,
    String? text,
  }) {
    return MessageBody(
      id: id is int? ? id : this.id,
      subject: subject ?? this.subject,
      text: text ?? this.text,
    );
  }
}
