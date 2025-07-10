/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'user.dart' as _i2;
import 'oauth_client.dart' as _i3;

abstract class OAuthCode
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = OAuthCodeTable();

  static const db = OAuthCodeRepository._();

  @override
  int? id;

  int userId;

  _i2.User? user;

  String authCode;

  int clientId;

  _i3.OAuthClient? client;

  DateTime generatedAt;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'authCode': authCode,
      'clientId': clientId,
      if (client != null) 'client': client?.toJsonForProtocol(),
      'generatedAt': generatedAt.toJson(),
    };
  }

  static OAuthCodeInclude include({
    _i2.UserInclude? user,
    _i3.OAuthClientInclude? client,
  }) {
    return OAuthCodeInclude._(
      user: user,
      client: client,
    );
  }

  static OAuthCodeIncludeList includeList({
    _i1.WhereExpressionBuilder<OAuthCodeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OAuthCodeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OAuthCodeTable>? orderByList,
    OAuthCodeInclude? include,
  }) {
    return OAuthCodeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(OAuthCode.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(OAuthCode.t),
      include: include,
    );
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

class OAuthCodeTable extends _i1.Table<int?> {
  OAuthCodeTable({super.tableRelation}) : super(tableName: 'oauth_codes') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    authCode = _i1.ColumnString(
      'authCode',
      this,
    );
    clientId = _i1.ColumnInt(
      'clientId',
      this,
    );
    generatedAt = _i1.ColumnDateTime(
      'generatedAt',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  _i2.UserTable? _user;

  late final _i1.ColumnString authCode;

  late final _i1.ColumnInt clientId;

  _i3.OAuthClientTable? _client;

  late final _i1.ColumnDateTime generatedAt;

  _i2.UserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: OAuthCode.t.userId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i3.OAuthClientTable get client {
    if (_client != null) return _client!;
    _client = _i1.createRelationTable(
      relationFieldName: 'client',
      field: OAuthCode.t.clientId,
      foreignField: _i3.OAuthClient.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.OAuthClientTable(tableRelation: foreignTableRelation),
    );
    return _client!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        authCode,
        clientId,
        generatedAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'client') {
      return client;
    }
    return null;
  }
}

class OAuthCodeInclude extends _i1.IncludeObject {
  OAuthCodeInclude._({
    _i2.UserInclude? user,
    _i3.OAuthClientInclude? client,
  }) {
    _user = user;
    _client = client;
  }

  _i2.UserInclude? _user;

  _i3.OAuthClientInclude? _client;

  @override
  Map<String, _i1.Include?> get includes => {
        'user': _user,
        'client': _client,
      };

  @override
  _i1.Table<int?> get table => OAuthCode.t;
}

class OAuthCodeIncludeList extends _i1.IncludeList {
  OAuthCodeIncludeList._({
    _i1.WhereExpressionBuilder<OAuthCodeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(OAuthCode.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => OAuthCode.t;
}

class OAuthCodeRepository {
  const OAuthCodeRepository._();

  final attachRow = const OAuthCodeAttachRowRepository._();

  /// Returns a list of [OAuthCode]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<OAuthCode>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OAuthCodeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OAuthCodeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OAuthCodeTable>? orderByList,
    _i1.Transaction? transaction,
    OAuthCodeInclude? include,
  }) async {
    return session.db.find<OAuthCode>(
      where: where?.call(OAuthCode.t),
      orderBy: orderBy?.call(OAuthCode.t),
      orderByList: orderByList?.call(OAuthCode.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [OAuthCode] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<OAuthCode?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OAuthCodeTable>? where,
    int? offset,
    _i1.OrderByBuilder<OAuthCodeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OAuthCodeTable>? orderByList,
    _i1.Transaction? transaction,
    OAuthCodeInclude? include,
  }) async {
    return session.db.findFirstRow<OAuthCode>(
      where: where?.call(OAuthCode.t),
      orderBy: orderBy?.call(OAuthCode.t),
      orderByList: orderByList?.call(OAuthCode.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [OAuthCode] by its [id] or null if no such row exists.
  Future<OAuthCode?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    OAuthCodeInclude? include,
  }) async {
    return session.db.findById<OAuthCode>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [OAuthCode]s in the list and returns the inserted rows.
  ///
  /// The returned [OAuthCode]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<OAuthCode>> insert(
    _i1.Session session,
    List<OAuthCode> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<OAuthCode>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [OAuthCode] and returns the inserted row.
  ///
  /// The returned [OAuthCode] will have its `id` field set.
  Future<OAuthCode> insertRow(
    _i1.Session session,
    OAuthCode row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<OAuthCode>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [OAuthCode]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<OAuthCode>> update(
    _i1.Session session,
    List<OAuthCode> rows, {
    _i1.ColumnSelections<OAuthCodeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<OAuthCode>(
      rows,
      columns: columns?.call(OAuthCode.t),
      transaction: transaction,
    );
  }

  /// Updates a single [OAuthCode]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<OAuthCode> updateRow(
    _i1.Session session,
    OAuthCode row, {
    _i1.ColumnSelections<OAuthCodeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<OAuthCode>(
      row,
      columns: columns?.call(OAuthCode.t),
      transaction: transaction,
    );
  }

  /// Deletes all [OAuthCode]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<OAuthCode>> delete(
    _i1.Session session,
    List<OAuthCode> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<OAuthCode>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [OAuthCode].
  Future<OAuthCode> deleteRow(
    _i1.Session session,
    OAuthCode row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<OAuthCode>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<OAuthCode>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OAuthCodeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<OAuthCode>(
      where: where(OAuthCode.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OAuthCodeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<OAuthCode>(
      where: where?.call(OAuthCode.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class OAuthCodeAttachRowRepository {
  const OAuthCodeAttachRowRepository._();

  /// Creates a relation between the given [OAuthCode] and [User]
  /// by setting the [OAuthCode]'s foreign key `userId` to refer to the [User].
  Future<void> user(
    _i1.Session session,
    OAuthCode oAuthCode,
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (oAuthCode.id == null) {
      throw ArgumentError.notNull('oAuthCode.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $oAuthCode = oAuthCode.copyWith(userId: user.id);
    await session.db.updateRow<OAuthCode>(
      $oAuthCode,
      columns: [OAuthCode.t.userId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [OAuthCode] and [OAuthClient]
  /// by setting the [OAuthCode]'s foreign key `clientId` to refer to the [OAuthClient].
  Future<void> client(
    _i1.Session session,
    OAuthCode oAuthCode,
    _i3.OAuthClient client, {
    _i1.Transaction? transaction,
  }) async {
    if (oAuthCode.id == null) {
      throw ArgumentError.notNull('oAuthCode.id');
    }
    if (client.id == null) {
      throw ArgumentError.notNull('client.id');
    }

    var $oAuthCode = oAuthCode.copyWith(clientId: client.id);
    await session.db.updateRow<OAuthCode>(
      $oAuthCode,
      columns: [OAuthCode.t.clientId],
      transaction: transaction,
    );
  }
}
