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

abstract class Profile implements _i1.SerializableModel {
  Profile._({
    this.id,
    required this.isNetworker,
    required this.userId,
    this.user,
  });

  factory Profile({
    int? id,
    required bool isNetworker,
    required int userId,
    _i2.User? user,
  }) = _ProfileImpl;

  factory Profile.fromJson(Map<String, dynamic> jsonSerialization) {
    return Profile(
      id: jsonSerialization['id'] as int?,
      isNetworker: jsonSerialization['isNetworker'] as bool,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  bool isNetworker;

  int userId;

  _i2.User? user;

  /// Returns a shallow copy of this [Profile]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Profile copyWith({
    int? id,
    bool? isNetworker,
    int? userId,
    _i2.User? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'isNetworker': isNetworker,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProfileImpl extends Profile {
  _ProfileImpl({
    int? id,
    required bool isNetworker,
    required int userId,
    _i2.User? user,
  }) : super._(
          id: id,
          isNetworker: isNetworker,
          userId: userId,
          user: user,
        );

  /// Returns a shallow copy of this [Profile]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Profile copyWith({
    Object? id = _Undefined,
    bool? isNetworker,
    int? userId,
    Object? user = _Undefined,
  }) {
    return Profile(
      id: id is int? ? id : this.id,
      isNetworker: isNetworker ?? this.isNetworker,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
    );
  }
}
