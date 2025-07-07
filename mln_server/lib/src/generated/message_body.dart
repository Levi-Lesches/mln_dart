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

abstract class MessageBody
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = MessageBodyTable();

  static const db = MessageBodyRepository._();

  @override
  int? id;

  String subject;

  String text;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'subject': subject,
      'text': text,
    };
  }

  static MessageBodyInclude include() {
    return MessageBodyInclude._();
  }

  static MessageBodyIncludeList includeList({
    _i1.WhereExpressionBuilder<MessageBodyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageBodyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageBodyTable>? orderByList,
    MessageBodyInclude? include,
  }) {
    return MessageBodyIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MessageBody.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(MessageBody.t),
      include: include,
    );
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

class MessageBodyTable extends _i1.Table<int?> {
  MessageBodyTable({super.tableRelation}) : super(tableName: 'message_bodies') {
    subject = _i1.ColumnString(
      'subject',
      this,
    );
    text = _i1.ColumnString(
      'text',
      this,
    );
  }

  late final _i1.ColumnString subject;

  late final _i1.ColumnString text;

  @override
  List<_i1.Column> get columns => [
        id,
        subject,
        text,
      ];
}

class MessageBodyInclude extends _i1.IncludeObject {
  MessageBodyInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => MessageBody.t;
}

class MessageBodyIncludeList extends _i1.IncludeList {
  MessageBodyIncludeList._({
    _i1.WhereExpressionBuilder<MessageBodyTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(MessageBody.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => MessageBody.t;
}

class MessageBodyRepository {
  const MessageBodyRepository._();

  /// Returns a list of [MessageBody]s matching the given query parameters.
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
  Future<List<MessageBody>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageBodyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageBodyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageBodyTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<MessageBody>(
      where: where?.call(MessageBody.t),
      orderBy: orderBy?.call(MessageBody.t),
      orderByList: orderByList?.call(MessageBody.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [MessageBody] matching the given query parameters.
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
  Future<MessageBody?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageBodyTable>? where,
    int? offset,
    _i1.OrderByBuilder<MessageBodyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageBodyTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<MessageBody>(
      where: where?.call(MessageBody.t),
      orderBy: orderBy?.call(MessageBody.t),
      orderByList: orderByList?.call(MessageBody.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [MessageBody] by its [id] or null if no such row exists.
  Future<MessageBody?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<MessageBody>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [MessageBody]s in the list and returns the inserted rows.
  ///
  /// The returned [MessageBody]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<MessageBody>> insert(
    _i1.Session session,
    List<MessageBody> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<MessageBody>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [MessageBody] and returns the inserted row.
  ///
  /// The returned [MessageBody] will have its `id` field set.
  Future<MessageBody> insertRow(
    _i1.Session session,
    MessageBody row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<MessageBody>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [MessageBody]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<MessageBody>> update(
    _i1.Session session,
    List<MessageBody> rows, {
    _i1.ColumnSelections<MessageBodyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<MessageBody>(
      rows,
      columns: columns?.call(MessageBody.t),
      transaction: transaction,
    );
  }

  /// Updates a single [MessageBody]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<MessageBody> updateRow(
    _i1.Session session,
    MessageBody row, {
    _i1.ColumnSelections<MessageBodyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<MessageBody>(
      row,
      columns: columns?.call(MessageBody.t),
      transaction: transaction,
    );
  }

  /// Deletes all [MessageBody]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<MessageBody>> delete(
    _i1.Session session,
    List<MessageBody> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MessageBody>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [MessageBody].
  Future<MessageBody> deleteRow(
    _i1.Session session,
    MessageBody row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<MessageBody>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<MessageBody>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MessageBodyTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<MessageBody>(
      where: where(MessageBody.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageBodyTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MessageBody>(
      where: where?.call(MessageBody.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
