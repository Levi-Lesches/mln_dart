/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class ItemInfo
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  ItemInfo._({
    this.id,
    required this.name,
  });

  factory ItemInfo({
    int? id,
    required String name,
  }) = _ItemInfoImpl;

  factory ItemInfo.fromJson(Map<String, dynamic> jsonSerialization) {
    return ItemInfo(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
    );
  }

  static final t = ItemInfoTable();

  static const db = ItemInfoRepository._();

  @override
  int? id;

  String name;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [ItemInfo]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ItemInfo copyWith({
    int? id,
    String? name,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
    };
  }

  static ItemInfoInclude include() {
    return ItemInfoInclude._();
  }

  static ItemInfoIncludeList includeList({
    _i1.WhereExpressionBuilder<ItemInfoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemInfoTable>? orderByList,
    ItemInfoInclude? include,
  }) {
    return ItemInfoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ItemInfo.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ItemInfo.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ItemInfoImpl extends ItemInfo {
  _ItemInfoImpl({
    int? id,
    required String name,
  }) : super._(
          id: id,
          name: name,
        );

  /// Returns a shallow copy of this [ItemInfo]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ItemInfo copyWith({
    Object? id = _Undefined,
    String? name,
  }) {
    return ItemInfo(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
    );
  }
}

class ItemInfoTable extends _i1.Table<int?> {
  ItemInfoTable({super.tableRelation}) : super(tableName: 'item_infos') {
    name = _i1.ColumnString(
      'name',
      this,
    );
  }

  late final _i1.ColumnString name;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
      ];
}

class ItemInfoInclude extends _i1.IncludeObject {
  ItemInfoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => ItemInfo.t;
}

class ItemInfoIncludeList extends _i1.IncludeList {
  ItemInfoIncludeList._({
    _i1.WhereExpressionBuilder<ItemInfoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ItemInfo.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => ItemInfo.t;
}

class ItemInfoRepository {
  const ItemInfoRepository._();

  /// Returns a list of [ItemInfo]s matching the given query parameters.
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
  Future<List<ItemInfo>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemInfoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemInfoTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ItemInfo>(
      where: where?.call(ItemInfo.t),
      orderBy: orderBy?.call(ItemInfo.t),
      orderByList: orderByList?.call(ItemInfo.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [ItemInfo] matching the given query parameters.
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
  Future<ItemInfo?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemInfoTable>? where,
    int? offset,
    _i1.OrderByBuilder<ItemInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemInfoTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<ItemInfo>(
      where: where?.call(ItemInfo.t),
      orderBy: orderBy?.call(ItemInfo.t),
      orderByList: orderByList?.call(ItemInfo.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [ItemInfo] by its [id] or null if no such row exists.
  Future<ItemInfo?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<ItemInfo>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [ItemInfo]s in the list and returns the inserted rows.
  ///
  /// The returned [ItemInfo]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<ItemInfo>> insert(
    _i1.Session session,
    List<ItemInfo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<ItemInfo>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [ItemInfo] and returns the inserted row.
  ///
  /// The returned [ItemInfo] will have its `id` field set.
  Future<ItemInfo> insertRow(
    _i1.Session session,
    ItemInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ItemInfo>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ItemInfo]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ItemInfo>> update(
    _i1.Session session,
    List<ItemInfo> rows, {
    _i1.ColumnSelections<ItemInfoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ItemInfo>(
      rows,
      columns: columns?.call(ItemInfo.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ItemInfo]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ItemInfo> updateRow(
    _i1.Session session,
    ItemInfo row, {
    _i1.ColumnSelections<ItemInfoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ItemInfo>(
      row,
      columns: columns?.call(ItemInfo.t),
      transaction: transaction,
    );
  }

  /// Deletes all [ItemInfo]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ItemInfo>> delete(
    _i1.Session session,
    List<ItemInfo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ItemInfo>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ItemInfo].
  Future<ItemInfo> deleteRow(
    _i1.Session session,
    ItemInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ItemInfo>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ItemInfo>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItemInfoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ItemInfo>(
      where: where(ItemInfo.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemInfoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ItemInfo>(
      where: where?.call(ItemInfo.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
