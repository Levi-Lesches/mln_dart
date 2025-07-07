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
import 'message_body.dart' as _i3;

abstract class Message
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Message._({
    this.id,
    required this.senderId,
    this.sender,
    required this.reipientId,
    this.reipient,
    required this.bodyId,
    this.body,
  });

  factory Message({
    int? id,
    required int senderId,
    _i2.User? sender,
    required int reipientId,
    _i2.User? reipient,
    required int bodyId,
    _i3.MessageBody? body,
  }) = _MessageImpl;

  factory Message.fromJson(Map<String, dynamic> jsonSerialization) {
    return Message(
      id: jsonSerialization['id'] as int?,
      senderId: jsonSerialization['senderId'] as int,
      sender: jsonSerialization['sender'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['sender'] as Map<String, dynamic>)),
      reipientId: jsonSerialization['reipientId'] as int,
      reipient: jsonSerialization['reipient'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['reipient'] as Map<String, dynamic>)),
      bodyId: jsonSerialization['bodyId'] as int,
      body: jsonSerialization['body'] == null
          ? null
          : _i3.MessageBody.fromJson(
              (jsonSerialization['body'] as Map<String, dynamic>)),
    );
  }

  static final t = MessageTable();

  static const db = MessageRepository._();

  @override
  int? id;

  int senderId;

  _i2.User? sender;

  int reipientId;

  _i2.User? reipient;

  int bodyId;

  _i3.MessageBody? body;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Message]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Message copyWith({
    int? id,
    int? senderId,
    _i2.User? sender,
    int? reipientId,
    _i2.User? reipient,
    int? bodyId,
    _i3.MessageBody? body,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'senderId': senderId,
      if (sender != null) 'sender': sender?.toJson(),
      'reipientId': reipientId,
      if (reipient != null) 'reipient': reipient?.toJson(),
      'bodyId': bodyId,
      if (body != null) 'body': body?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'senderId': senderId,
      if (sender != null) 'sender': sender?.toJsonForProtocol(),
      'reipientId': reipientId,
      if (reipient != null) 'reipient': reipient?.toJsonForProtocol(),
      'bodyId': bodyId,
      if (body != null) 'body': body?.toJsonForProtocol(),
    };
  }

  static MessageInclude include({
    _i2.UserInclude? sender,
    _i2.UserInclude? reipient,
    _i3.MessageBodyInclude? body,
  }) {
    return MessageInclude._(
      sender: sender,
      reipient: reipient,
      body: body,
    );
  }

  static MessageIncludeList includeList({
    _i1.WhereExpressionBuilder<MessageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTable>? orderByList,
    MessageInclude? include,
  }) {
    return MessageIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Message.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Message.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MessageImpl extends Message {
  _MessageImpl({
    int? id,
    required int senderId,
    _i2.User? sender,
    required int reipientId,
    _i2.User? reipient,
    required int bodyId,
    _i3.MessageBody? body,
  }) : super._(
          id: id,
          senderId: senderId,
          sender: sender,
          reipientId: reipientId,
          reipient: reipient,
          bodyId: bodyId,
          body: body,
        );

  /// Returns a shallow copy of this [Message]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Message copyWith({
    Object? id = _Undefined,
    int? senderId,
    Object? sender = _Undefined,
    int? reipientId,
    Object? reipient = _Undefined,
    int? bodyId,
    Object? body = _Undefined,
  }) {
    return Message(
      id: id is int? ? id : this.id,
      senderId: senderId ?? this.senderId,
      sender: sender is _i2.User? ? sender : this.sender?.copyWith(),
      reipientId: reipientId ?? this.reipientId,
      reipient: reipient is _i2.User? ? reipient : this.reipient?.copyWith(),
      bodyId: bodyId ?? this.bodyId,
      body: body is _i3.MessageBody? ? body : this.body?.copyWith(),
    );
  }
}

class MessageTable extends _i1.Table<int?> {
  MessageTable({super.tableRelation}) : super(tableName: 'messages') {
    senderId = _i1.ColumnInt(
      'senderId',
      this,
    );
    reipientId = _i1.ColumnInt(
      'reipientId',
      this,
    );
    bodyId = _i1.ColumnInt(
      'bodyId',
      this,
    );
  }

  late final _i1.ColumnInt senderId;

  _i2.UserTable? _sender;

  late final _i1.ColumnInt reipientId;

  _i2.UserTable? _reipient;

  late final _i1.ColumnInt bodyId;

  _i3.MessageBodyTable? _body;

  _i2.UserTable get sender {
    if (_sender != null) return _sender!;
    _sender = _i1.createRelationTable(
      relationFieldName: 'sender',
      field: Message.t.senderId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _sender!;
  }

  _i2.UserTable get reipient {
    if (_reipient != null) return _reipient!;
    _reipient = _i1.createRelationTable(
      relationFieldName: 'reipient',
      field: Message.t.reipientId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _reipient!;
  }

  _i3.MessageBodyTable get body {
    if (_body != null) return _body!;
    _body = _i1.createRelationTable(
      relationFieldName: 'body',
      field: Message.t.bodyId,
      foreignField: _i3.MessageBody.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.MessageBodyTable(tableRelation: foreignTableRelation),
    );
    return _body!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        senderId,
        reipientId,
        bodyId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'sender') {
      return sender;
    }
    if (relationField == 'reipient') {
      return reipient;
    }
    if (relationField == 'body') {
      return body;
    }
    return null;
  }
}

class MessageInclude extends _i1.IncludeObject {
  MessageInclude._({
    _i2.UserInclude? sender,
    _i2.UserInclude? reipient,
    _i3.MessageBodyInclude? body,
  }) {
    _sender = sender;
    _reipient = reipient;
    _body = body;
  }

  _i2.UserInclude? _sender;

  _i2.UserInclude? _reipient;

  _i3.MessageBodyInclude? _body;

  @override
  Map<String, _i1.Include?> get includes => {
        'sender': _sender,
        'reipient': _reipient,
        'body': _body,
      };

  @override
  _i1.Table<int?> get table => Message.t;
}

class MessageIncludeList extends _i1.IncludeList {
  MessageIncludeList._({
    _i1.WhereExpressionBuilder<MessageTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Message.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Message.t;
}

class MessageRepository {
  const MessageRepository._();

  final attachRow = const MessageAttachRowRepository._();

  /// Returns a list of [Message]s matching the given query parameters.
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
  Future<List<Message>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTable>? orderByList,
    _i1.Transaction? transaction,
    MessageInclude? include,
  }) async {
    return session.db.find<Message>(
      where: where?.call(Message.t),
      orderBy: orderBy?.call(Message.t),
      orderByList: orderByList?.call(Message.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Message] matching the given query parameters.
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
  Future<Message?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTable>? where,
    int? offset,
    _i1.OrderByBuilder<MessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTable>? orderByList,
    _i1.Transaction? transaction,
    MessageInclude? include,
  }) async {
    return session.db.findFirstRow<Message>(
      where: where?.call(Message.t),
      orderBy: orderBy?.call(Message.t),
      orderByList: orderByList?.call(Message.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Message] by its [id] or null if no such row exists.
  Future<Message?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    MessageInclude? include,
  }) async {
    return session.db.findById<Message>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Message]s in the list and returns the inserted rows.
  ///
  /// The returned [Message]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Message>> insert(
    _i1.Session session,
    List<Message> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Message>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Message] and returns the inserted row.
  ///
  /// The returned [Message] will have its `id` field set.
  Future<Message> insertRow(
    _i1.Session session,
    Message row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Message>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Message]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Message>> update(
    _i1.Session session,
    List<Message> rows, {
    _i1.ColumnSelections<MessageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Message>(
      rows,
      columns: columns?.call(Message.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Message]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Message> updateRow(
    _i1.Session session,
    Message row, {
    _i1.ColumnSelections<MessageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Message>(
      row,
      columns: columns?.call(Message.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Message]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Message>> delete(
    _i1.Session session,
    List<Message> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Message>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Message].
  Future<Message> deleteRow(
    _i1.Session session,
    Message row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Message>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Message>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MessageTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Message>(
      where: where(Message.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Message>(
      where: where?.call(Message.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class MessageAttachRowRepository {
  const MessageAttachRowRepository._();

  /// Creates a relation between the given [Message] and [User]
  /// by setting the [Message]'s foreign key `senderId` to refer to the [User].
  Future<void> sender(
    _i1.Session session,
    Message message,
    _i2.User sender, {
    _i1.Transaction? transaction,
  }) async {
    if (message.id == null) {
      throw ArgumentError.notNull('message.id');
    }
    if (sender.id == null) {
      throw ArgumentError.notNull('sender.id');
    }

    var $message = message.copyWith(senderId: sender.id);
    await session.db.updateRow<Message>(
      $message,
      columns: [Message.t.senderId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Message] and [User]
  /// by setting the [Message]'s foreign key `reipientId` to refer to the [User].
  Future<void> reipient(
    _i1.Session session,
    Message message,
    _i2.User reipient, {
    _i1.Transaction? transaction,
  }) async {
    if (message.id == null) {
      throw ArgumentError.notNull('message.id');
    }
    if (reipient.id == null) {
      throw ArgumentError.notNull('reipient.id');
    }

    var $message = message.copyWith(reipientId: reipient.id);
    await session.db.updateRow<Message>(
      $message,
      columns: [Message.t.reipientId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Message] and [MessageBody]
  /// by setting the [Message]'s foreign key `bodyId` to refer to the [MessageBody].
  Future<void> body(
    _i1.Session session,
    Message message,
    _i3.MessageBody body, {
    _i1.Transaction? transaction,
  }) async {
    if (message.id == null) {
      throw ArgumentError.notNull('message.id');
    }
    if (body.id == null) {
      throw ArgumentError.notNull('body.id');
    }

    var $message = message.copyWith(bodyId: body.id);
    await session.db.updateRow<Message>(
      $message,
      columns: [Message.t.bodyId],
      transaction: transaction,
    );
  }
}
