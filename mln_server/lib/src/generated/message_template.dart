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
import 'message_body.dart' as _i2;

abstract class MessageTemplate
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  MessageTemplate._({
    this.id,
    required this.bodyId,
    this.body,
  });

  factory MessageTemplate({
    int? id,
    required int bodyId,
    _i2.MessageBody? body,
  }) = _MessageTemplateImpl;

  factory MessageTemplate.fromJson(Map<String, dynamic> jsonSerialization) {
    return MessageTemplate(
      id: jsonSerialization['id'] as int?,
      bodyId: jsonSerialization['bodyId'] as int,
      body: jsonSerialization['body'] == null
          ? null
          : _i2.MessageBody.fromJson(
              (jsonSerialization['body'] as Map<String, dynamic>)),
    );
  }

  static final t = MessageTemplateTable();

  static const db = MessageTemplateRepository._();

  @override
  int? id;

  int bodyId;

  _i2.MessageBody? body;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [MessageTemplate]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MessageTemplate copyWith({
    int? id,
    int? bodyId,
    _i2.MessageBody? body,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'bodyId': bodyId,
      if (body != null) 'body': body?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'bodyId': bodyId,
      if (body != null) 'body': body?.toJsonForProtocol(),
    };
  }

  static MessageTemplateInclude include({_i2.MessageBodyInclude? body}) {
    return MessageTemplateInclude._(body: body);
  }

  static MessageTemplateIncludeList includeList({
    _i1.WhereExpressionBuilder<MessageTemplateTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageTemplateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTemplateTable>? orderByList,
    MessageTemplateInclude? include,
  }) {
    return MessageTemplateIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MessageTemplate.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(MessageTemplate.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MessageTemplateImpl extends MessageTemplate {
  _MessageTemplateImpl({
    int? id,
    required int bodyId,
    _i2.MessageBody? body,
  }) : super._(
          id: id,
          bodyId: bodyId,
          body: body,
        );

  /// Returns a shallow copy of this [MessageTemplate]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MessageTemplate copyWith({
    Object? id = _Undefined,
    int? bodyId,
    Object? body = _Undefined,
  }) {
    return MessageTemplate(
      id: id is int? ? id : this.id,
      bodyId: bodyId ?? this.bodyId,
      body: body is _i2.MessageBody? ? body : this.body?.copyWith(),
    );
  }
}

class MessageTemplateTable extends _i1.Table<int?> {
  MessageTemplateTable({super.tableRelation})
      : super(tableName: 'message_templates') {
    bodyId = _i1.ColumnInt(
      'bodyId',
      this,
    );
  }

  late final _i1.ColumnInt bodyId;

  _i2.MessageBodyTable? _body;

  _i2.MessageBodyTable get body {
    if (_body != null) return _body!;
    _body = _i1.createRelationTable(
      relationFieldName: 'body',
      field: MessageTemplate.t.bodyId,
      foreignField: _i2.MessageBody.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MessageBodyTable(tableRelation: foreignTableRelation),
    );
    return _body!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        bodyId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'body') {
      return body;
    }
    return null;
  }
}

class MessageTemplateInclude extends _i1.IncludeObject {
  MessageTemplateInclude._({_i2.MessageBodyInclude? body}) {
    _body = body;
  }

  _i2.MessageBodyInclude? _body;

  @override
  Map<String, _i1.Include?> get includes => {'body': _body};

  @override
  _i1.Table<int?> get table => MessageTemplate.t;
}

class MessageTemplateIncludeList extends _i1.IncludeList {
  MessageTemplateIncludeList._({
    _i1.WhereExpressionBuilder<MessageTemplateTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(MessageTemplate.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => MessageTemplate.t;
}

class MessageTemplateRepository {
  const MessageTemplateRepository._();

  final attachRow = const MessageTemplateAttachRowRepository._();

  /// Returns a list of [MessageTemplate]s matching the given query parameters.
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
  Future<List<MessageTemplate>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTemplateTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageTemplateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTemplateTable>? orderByList,
    _i1.Transaction? transaction,
    MessageTemplateInclude? include,
  }) async {
    return session.db.find<MessageTemplate>(
      where: where?.call(MessageTemplate.t),
      orderBy: orderBy?.call(MessageTemplate.t),
      orderByList: orderByList?.call(MessageTemplate.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [MessageTemplate] matching the given query parameters.
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
  Future<MessageTemplate?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTemplateTable>? where,
    int? offset,
    _i1.OrderByBuilder<MessageTemplateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTemplateTable>? orderByList,
    _i1.Transaction? transaction,
    MessageTemplateInclude? include,
  }) async {
    return session.db.findFirstRow<MessageTemplate>(
      where: where?.call(MessageTemplate.t),
      orderBy: orderBy?.call(MessageTemplate.t),
      orderByList: orderByList?.call(MessageTemplate.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [MessageTemplate] by its [id] or null if no such row exists.
  Future<MessageTemplate?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    MessageTemplateInclude? include,
  }) async {
    return session.db.findById<MessageTemplate>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [MessageTemplate]s in the list and returns the inserted rows.
  ///
  /// The returned [MessageTemplate]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<MessageTemplate>> insert(
    _i1.Session session,
    List<MessageTemplate> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<MessageTemplate>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [MessageTemplate] and returns the inserted row.
  ///
  /// The returned [MessageTemplate] will have its `id` field set.
  Future<MessageTemplate> insertRow(
    _i1.Session session,
    MessageTemplate row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<MessageTemplate>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [MessageTemplate]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<MessageTemplate>> update(
    _i1.Session session,
    List<MessageTemplate> rows, {
    _i1.ColumnSelections<MessageTemplateTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<MessageTemplate>(
      rows,
      columns: columns?.call(MessageTemplate.t),
      transaction: transaction,
    );
  }

  /// Updates a single [MessageTemplate]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<MessageTemplate> updateRow(
    _i1.Session session,
    MessageTemplate row, {
    _i1.ColumnSelections<MessageTemplateTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<MessageTemplate>(
      row,
      columns: columns?.call(MessageTemplate.t),
      transaction: transaction,
    );
  }

  /// Deletes all [MessageTemplate]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<MessageTemplate>> delete(
    _i1.Session session,
    List<MessageTemplate> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MessageTemplate>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [MessageTemplate].
  Future<MessageTemplate> deleteRow(
    _i1.Session session,
    MessageTemplate row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<MessageTemplate>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<MessageTemplate>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MessageTemplateTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<MessageTemplate>(
      where: where(MessageTemplate.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTemplateTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MessageTemplate>(
      where: where?.call(MessageTemplate.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class MessageTemplateAttachRowRepository {
  const MessageTemplateAttachRowRepository._();

  /// Creates a relation between the given [MessageTemplate] and [MessageBody]
  /// by setting the [MessageTemplate]'s foreign key `bodyId` to refer to the [MessageBody].
  Future<void> body(
    _i1.Session session,
    MessageTemplate messageTemplate,
    _i2.MessageBody body, {
    _i1.Transaction? transaction,
  }) async {
    if (messageTemplate.id == null) {
      throw ArgumentError.notNull('messageTemplate.id');
    }
    if (body.id == null) {
      throw ArgumentError.notNull('body.id');
    }

    var $messageTemplate = messageTemplate.copyWith(bodyId: body.id);
    await session.db.updateRow<MessageTemplate>(
      $messageTemplate,
      columns: [MessageTemplate.t.bodyId],
      transaction: transaction,
    );
  }
}
