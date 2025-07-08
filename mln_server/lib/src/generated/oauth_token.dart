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

abstract class OAuthToken
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  OAuthToken._({
    this.id,
    required this.accessToken,
    required this.userId,
    this.user,
    required this.clientId,
    this.client,
  });

  factory OAuthToken({
    int? id,
    required String accessToken,
    required int userId,
    _i2.User? user,
    required int clientId,
    _i3.OAuthClient? client,
  }) = _OAuthTokenImpl;

  factory OAuthToken.fromJson(Map<String, dynamic> jsonSerialization) {
    return OAuthToken(
      id: jsonSerialization['id'] as int?,
      accessToken: jsonSerialization['accessToken'] as String,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      clientId: jsonSerialization['clientId'] as int,
      client: jsonSerialization['client'] == null
          ? null
          : _i3.OAuthClient.fromJson(
              (jsonSerialization['client'] as Map<String, dynamic>)),
    );
  }

  static final t = OAuthTokenTable();

  static const db = OAuthTokenRepository._();

  @override
  int? id;

  String accessToken;

  int userId;

  _i2.User? user;

  int clientId;

  _i3.OAuthClient? client;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [OAuthToken]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  OAuthToken copyWith({
    int? id,
    String? accessToken,
    int? userId,
    _i2.User? user,
    int? clientId,
    _i3.OAuthClient? client,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'accessToken': accessToken,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'clientId': clientId,
      if (client != null) 'client': client?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'accessToken': accessToken,
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'clientId': clientId,
      if (client != null) 'client': client?.toJsonForProtocol(),
    };
  }

  static OAuthTokenInclude include({
    _i2.UserInclude? user,
    _i3.OAuthClientInclude? client,
  }) {
    return OAuthTokenInclude._(
      user: user,
      client: client,
    );
  }

  static OAuthTokenIncludeList includeList({
    _i1.WhereExpressionBuilder<OAuthTokenTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OAuthTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OAuthTokenTable>? orderByList,
    OAuthTokenInclude? include,
  }) {
    return OAuthTokenIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(OAuthToken.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(OAuthToken.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OAuthTokenImpl extends OAuthToken {
  _OAuthTokenImpl({
    int? id,
    required String accessToken,
    required int userId,
    _i2.User? user,
    required int clientId,
    _i3.OAuthClient? client,
  }) : super._(
          id: id,
          accessToken: accessToken,
          userId: userId,
          user: user,
          clientId: clientId,
          client: client,
        );

  /// Returns a shallow copy of this [OAuthToken]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  OAuthToken copyWith({
    Object? id = _Undefined,
    String? accessToken,
    int? userId,
    Object? user = _Undefined,
    int? clientId,
    Object? client = _Undefined,
  }) {
    return OAuthToken(
      id: id is int? ? id : this.id,
      accessToken: accessToken ?? this.accessToken,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      clientId: clientId ?? this.clientId,
      client: client is _i3.OAuthClient? ? client : this.client?.copyWith(),
    );
  }
}

class OAuthTokenTable extends _i1.Table<int?> {
  OAuthTokenTable({super.tableRelation}) : super(tableName: 'oauth_tokens') {
    accessToken = _i1.ColumnString(
      'accessToken',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    clientId = _i1.ColumnInt(
      'clientId',
      this,
    );
  }

  late final _i1.ColumnString accessToken;

  late final _i1.ColumnInt userId;

  _i2.UserTable? _user;

  late final _i1.ColumnInt clientId;

  _i3.OAuthClientTable? _client;

  _i2.UserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: OAuthToken.t.userId,
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
      field: OAuthToken.t.clientId,
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
        accessToken,
        userId,
        clientId,
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

class OAuthTokenInclude extends _i1.IncludeObject {
  OAuthTokenInclude._({
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
  _i1.Table<int?> get table => OAuthToken.t;
}

class OAuthTokenIncludeList extends _i1.IncludeList {
  OAuthTokenIncludeList._({
    _i1.WhereExpressionBuilder<OAuthTokenTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(OAuthToken.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => OAuthToken.t;
}

class OAuthTokenRepository {
  const OAuthTokenRepository._();

  final attachRow = const OAuthTokenAttachRowRepository._();

  /// Returns a list of [OAuthToken]s matching the given query parameters.
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
  Future<List<OAuthToken>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OAuthTokenTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OAuthTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OAuthTokenTable>? orderByList,
    _i1.Transaction? transaction,
    OAuthTokenInclude? include,
  }) async {
    return session.db.find<OAuthToken>(
      where: where?.call(OAuthToken.t),
      orderBy: orderBy?.call(OAuthToken.t),
      orderByList: orderByList?.call(OAuthToken.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [OAuthToken] matching the given query parameters.
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
  Future<OAuthToken?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OAuthTokenTable>? where,
    int? offset,
    _i1.OrderByBuilder<OAuthTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OAuthTokenTable>? orderByList,
    _i1.Transaction? transaction,
    OAuthTokenInclude? include,
  }) async {
    return session.db.findFirstRow<OAuthToken>(
      where: where?.call(OAuthToken.t),
      orderBy: orderBy?.call(OAuthToken.t),
      orderByList: orderByList?.call(OAuthToken.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [OAuthToken] by its [id] or null if no such row exists.
  Future<OAuthToken?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    OAuthTokenInclude? include,
  }) async {
    return session.db.findById<OAuthToken>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [OAuthToken]s in the list and returns the inserted rows.
  ///
  /// The returned [OAuthToken]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<OAuthToken>> insert(
    _i1.Session session,
    List<OAuthToken> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<OAuthToken>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [OAuthToken] and returns the inserted row.
  ///
  /// The returned [OAuthToken] will have its `id` field set.
  Future<OAuthToken> insertRow(
    _i1.Session session,
    OAuthToken row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<OAuthToken>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [OAuthToken]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<OAuthToken>> update(
    _i1.Session session,
    List<OAuthToken> rows, {
    _i1.ColumnSelections<OAuthTokenTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<OAuthToken>(
      rows,
      columns: columns?.call(OAuthToken.t),
      transaction: transaction,
    );
  }

  /// Updates a single [OAuthToken]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<OAuthToken> updateRow(
    _i1.Session session,
    OAuthToken row, {
    _i1.ColumnSelections<OAuthTokenTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<OAuthToken>(
      row,
      columns: columns?.call(OAuthToken.t),
      transaction: transaction,
    );
  }

  /// Deletes all [OAuthToken]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<OAuthToken>> delete(
    _i1.Session session,
    List<OAuthToken> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<OAuthToken>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [OAuthToken].
  Future<OAuthToken> deleteRow(
    _i1.Session session,
    OAuthToken row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<OAuthToken>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<OAuthToken>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OAuthTokenTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<OAuthToken>(
      where: where(OAuthToken.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OAuthTokenTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<OAuthToken>(
      where: where?.call(OAuthToken.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class OAuthTokenAttachRowRepository {
  const OAuthTokenAttachRowRepository._();

  /// Creates a relation between the given [OAuthToken] and [User]
  /// by setting the [OAuthToken]'s foreign key `userId` to refer to the [User].
  Future<void> user(
    _i1.Session session,
    OAuthToken oAuthToken,
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (oAuthToken.id == null) {
      throw ArgumentError.notNull('oAuthToken.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $oAuthToken = oAuthToken.copyWith(userId: user.id);
    await session.db.updateRow<OAuthToken>(
      $oAuthToken,
      columns: [OAuthToken.t.userId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [OAuthToken] and [OAuthClient]
  /// by setting the [OAuthToken]'s foreign key `clientId` to refer to the [OAuthClient].
  Future<void> client(
    _i1.Session session,
    OAuthToken oAuthToken,
    _i3.OAuthClient client, {
    _i1.Transaction? transaction,
  }) async {
    if (oAuthToken.id == null) {
      throw ArgumentError.notNull('oAuthToken.id');
    }
    if (client.id == null) {
      throw ArgumentError.notNull('client.id');
    }

    var $oAuthToken = oAuthToken.copyWith(clientId: client.id);
    await session.db.updateRow<OAuthToken>(
      $oAuthToken,
      columns: [OAuthToken.t.clientId],
      transaction: transaction,
    );
  }
}
