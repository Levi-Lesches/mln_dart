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
import 'item_info.dart' as _i2;
import 'message.dart' as _i3;

abstract class MessageAttachment
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  MessageAttachment._({
    this.id,
    required this.itemId,
    this.item,
    required this.qty,
    required this.messageId,
    this.message,
  });

  factory MessageAttachment({
    int? id,
    required int itemId,
    _i2.ItemInfo? item,
    required int qty,
    required int messageId,
    _i3.Message? message,
  }) = _MessageAttachmentImpl;

  factory MessageAttachment.fromJson(Map<String, dynamic> jsonSerialization) {
    return MessageAttachment(
      id: jsonSerialization['id'] as int?,
      itemId: jsonSerialization['itemId'] as int,
      item: jsonSerialization['item'] == null
          ? null
          : _i2.ItemInfo.fromJson(
              (jsonSerialization['item'] as Map<String, dynamic>)),
      qty: jsonSerialization['qty'] as int,
      messageId: jsonSerialization['messageId'] as int,
      message: jsonSerialization['message'] == null
          ? null
          : _i3.Message.fromJson(
              (jsonSerialization['message'] as Map<String, dynamic>)),
    );
  }

  static final t = MessageAttachmentTable();

  static const db = MessageAttachmentRepository._();

  @override
  int? id;

  int itemId;

  _i2.ItemInfo? item;

  int qty;

  int messageId;

  _i3.Message? message;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [MessageAttachment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MessageAttachment copyWith({
    int? id,
    int? itemId,
    _i2.ItemInfo? item,
    int? qty,
    int? messageId,
    _i3.Message? message,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'itemId': itemId,
      if (item != null) 'item': item?.toJson(),
      'qty': qty,
      'messageId': messageId,
      if (message != null) 'message': message?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'itemId': itemId,
      if (item != null) 'item': item?.toJsonForProtocol(),
      'qty': qty,
      'messageId': messageId,
      if (message != null) 'message': message?.toJsonForProtocol(),
    };
  }

  static MessageAttachmentInclude include({
    _i2.ItemInfoInclude? item,
    _i3.MessageInclude? message,
  }) {
    return MessageAttachmentInclude._(
      item: item,
      message: message,
    );
  }

  static MessageAttachmentIncludeList includeList({
    _i1.WhereExpressionBuilder<MessageAttachmentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageAttachmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageAttachmentTable>? orderByList,
    MessageAttachmentInclude? include,
  }) {
    return MessageAttachmentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MessageAttachment.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(MessageAttachment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MessageAttachmentImpl extends MessageAttachment {
  _MessageAttachmentImpl({
    int? id,
    required int itemId,
    _i2.ItemInfo? item,
    required int qty,
    required int messageId,
    _i3.Message? message,
  }) : super._(
          id: id,
          itemId: itemId,
          item: item,
          qty: qty,
          messageId: messageId,
          message: message,
        );

  /// Returns a shallow copy of this [MessageAttachment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MessageAttachment copyWith({
    Object? id = _Undefined,
    int? itemId,
    Object? item = _Undefined,
    int? qty,
    int? messageId,
    Object? message = _Undefined,
  }) {
    return MessageAttachment(
      id: id is int? ? id : this.id,
      itemId: itemId ?? this.itemId,
      item: item is _i2.ItemInfo? ? item : this.item?.copyWith(),
      qty: qty ?? this.qty,
      messageId: messageId ?? this.messageId,
      message: message is _i3.Message? ? message : this.message?.copyWith(),
    );
  }
}

class MessageAttachmentTable extends _i1.Table<int?> {
  MessageAttachmentTable({super.tableRelation})
      : super(tableName: 'message_attachments') {
    itemId = _i1.ColumnInt(
      'itemId',
      this,
    );
    qty = _i1.ColumnInt(
      'qty',
      this,
    );
    messageId = _i1.ColumnInt(
      'messageId',
      this,
    );
  }

  late final _i1.ColumnInt itemId;

  _i2.ItemInfoTable? _item;

  late final _i1.ColumnInt qty;

  late final _i1.ColumnInt messageId;

  _i3.MessageTable? _message;

  _i2.ItemInfoTable get item {
    if (_item != null) return _item!;
    _item = _i1.createRelationTable(
      relationFieldName: 'item',
      field: MessageAttachment.t.itemId,
      foreignField: _i2.ItemInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ItemInfoTable(tableRelation: foreignTableRelation),
    );
    return _item!;
  }

  _i3.MessageTable get message {
    if (_message != null) return _message!;
    _message = _i1.createRelationTable(
      relationFieldName: 'message',
      field: MessageAttachment.t.messageId,
      foreignField: _i3.Message.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.MessageTable(tableRelation: foreignTableRelation),
    );
    return _message!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        itemId,
        qty,
        messageId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'item') {
      return item;
    }
    if (relationField == 'message') {
      return message;
    }
    return null;
  }
}

class MessageAttachmentInclude extends _i1.IncludeObject {
  MessageAttachmentInclude._({
    _i2.ItemInfoInclude? item,
    _i3.MessageInclude? message,
  }) {
    _item = item;
    _message = message;
  }

  _i2.ItemInfoInclude? _item;

  _i3.MessageInclude? _message;

  @override
  Map<String, _i1.Include?> get includes => {
        'item': _item,
        'message': _message,
      };

  @override
  _i1.Table<int?> get table => MessageAttachment.t;
}

class MessageAttachmentIncludeList extends _i1.IncludeList {
  MessageAttachmentIncludeList._({
    _i1.WhereExpressionBuilder<MessageAttachmentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(MessageAttachment.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => MessageAttachment.t;
}

class MessageAttachmentRepository {
  const MessageAttachmentRepository._();

  final attachRow = const MessageAttachmentAttachRowRepository._();

  /// Returns a list of [MessageAttachment]s matching the given query parameters.
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
  Future<List<MessageAttachment>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageAttachmentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageAttachmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageAttachmentTable>? orderByList,
    _i1.Transaction? transaction,
    MessageAttachmentInclude? include,
  }) async {
    return session.db.find<MessageAttachment>(
      where: where?.call(MessageAttachment.t),
      orderBy: orderBy?.call(MessageAttachment.t),
      orderByList: orderByList?.call(MessageAttachment.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [MessageAttachment] matching the given query parameters.
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
  Future<MessageAttachment?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageAttachmentTable>? where,
    int? offset,
    _i1.OrderByBuilder<MessageAttachmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageAttachmentTable>? orderByList,
    _i1.Transaction? transaction,
    MessageAttachmentInclude? include,
  }) async {
    return session.db.findFirstRow<MessageAttachment>(
      where: where?.call(MessageAttachment.t),
      orderBy: orderBy?.call(MessageAttachment.t),
      orderByList: orderByList?.call(MessageAttachment.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [MessageAttachment] by its [id] or null if no such row exists.
  Future<MessageAttachment?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    MessageAttachmentInclude? include,
  }) async {
    return session.db.findById<MessageAttachment>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [MessageAttachment]s in the list and returns the inserted rows.
  ///
  /// The returned [MessageAttachment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<MessageAttachment>> insert(
    _i1.Session session,
    List<MessageAttachment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<MessageAttachment>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [MessageAttachment] and returns the inserted row.
  ///
  /// The returned [MessageAttachment] will have its `id` field set.
  Future<MessageAttachment> insertRow(
    _i1.Session session,
    MessageAttachment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<MessageAttachment>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [MessageAttachment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<MessageAttachment>> update(
    _i1.Session session,
    List<MessageAttachment> rows, {
    _i1.ColumnSelections<MessageAttachmentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<MessageAttachment>(
      rows,
      columns: columns?.call(MessageAttachment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [MessageAttachment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<MessageAttachment> updateRow(
    _i1.Session session,
    MessageAttachment row, {
    _i1.ColumnSelections<MessageAttachmentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<MessageAttachment>(
      row,
      columns: columns?.call(MessageAttachment.t),
      transaction: transaction,
    );
  }

  /// Deletes all [MessageAttachment]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<MessageAttachment>> delete(
    _i1.Session session,
    List<MessageAttachment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MessageAttachment>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [MessageAttachment].
  Future<MessageAttachment> deleteRow(
    _i1.Session session,
    MessageAttachment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<MessageAttachment>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<MessageAttachment>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MessageAttachmentTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<MessageAttachment>(
      where: where(MessageAttachment.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageAttachmentTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MessageAttachment>(
      where: where?.call(MessageAttachment.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class MessageAttachmentAttachRowRepository {
  const MessageAttachmentAttachRowRepository._();

  /// Creates a relation between the given [MessageAttachment] and [ItemInfo]
  /// by setting the [MessageAttachment]'s foreign key `itemId` to refer to the [ItemInfo].
  Future<void> item(
    _i1.Session session,
    MessageAttachment messageAttachment,
    _i2.ItemInfo item, {
    _i1.Transaction? transaction,
  }) async {
    if (messageAttachment.id == null) {
      throw ArgumentError.notNull('messageAttachment.id');
    }
    if (item.id == null) {
      throw ArgumentError.notNull('item.id');
    }

    var $messageAttachment = messageAttachment.copyWith(itemId: item.id);
    await session.db.updateRow<MessageAttachment>(
      $messageAttachment,
      columns: [MessageAttachment.t.itemId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [MessageAttachment] and [Message]
  /// by setting the [MessageAttachment]'s foreign key `messageId` to refer to the [Message].
  Future<void> message(
    _i1.Session session,
    MessageAttachment messageAttachment,
    _i3.Message message, {
    _i1.Transaction? transaction,
  }) async {
    if (messageAttachment.id == null) {
      throw ArgumentError.notNull('messageAttachment.id');
    }
    if (message.id == null) {
      throw ArgumentError.notNull('message.id');
    }

    var $messageAttachment = messageAttachment.copyWith(messageId: message.id);
    await session.db.updateRow<MessageAttachment>(
      $messageAttachment,
      columns: [MessageAttachment.t.messageId],
      transaction: transaction,
    );
  }
}
