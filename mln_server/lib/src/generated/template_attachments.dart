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
import 'message_template.dart' as _i2;
import 'item_info.dart' as _i3;

abstract class MessageTemplateAttachment
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  MessageTemplateAttachment._({
    this.id,
    required this.templateId,
    this.template,
    required this.itemId,
    this.item,
    required this.qty,
  });

  factory MessageTemplateAttachment({
    int? id,
    required int templateId,
    _i2.MessageTemplate? template,
    required int itemId,
    _i3.ItemInfo? item,
    required int qty,
  }) = _MessageTemplateAttachmentImpl;

  factory MessageTemplateAttachment.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return MessageTemplateAttachment(
      id: jsonSerialization['id'] as int?,
      templateId: jsonSerialization['templateId'] as int,
      template: jsonSerialization['template'] == null
          ? null
          : _i2.MessageTemplate.fromJson(
              (jsonSerialization['template'] as Map<String, dynamic>)),
      itemId: jsonSerialization['itemId'] as int,
      item: jsonSerialization['item'] == null
          ? null
          : _i3.ItemInfo.fromJson(
              (jsonSerialization['item'] as Map<String, dynamic>)),
      qty: jsonSerialization['qty'] as int,
    );
  }

  static final t = MessageTemplateAttachmentTable();

  static const db = MessageTemplateAttachmentRepository._();

  @override
  int? id;

  int templateId;

  _i2.MessageTemplate? template;

  int itemId;

  _i3.ItemInfo? item;

  int qty;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [MessageTemplateAttachment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MessageTemplateAttachment copyWith({
    int? id,
    int? templateId,
    _i2.MessageTemplate? template,
    int? itemId,
    _i3.ItemInfo? item,
    int? qty,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'templateId': templateId,
      if (template != null) 'template': template?.toJson(),
      'itemId': itemId,
      if (item != null) 'item': item?.toJson(),
      'qty': qty,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'templateId': templateId,
      if (template != null) 'template': template?.toJsonForProtocol(),
      'itemId': itemId,
      if (item != null) 'item': item?.toJsonForProtocol(),
      'qty': qty,
    };
  }

  static MessageTemplateAttachmentInclude include({
    _i2.MessageTemplateInclude? template,
    _i3.ItemInfoInclude? item,
  }) {
    return MessageTemplateAttachmentInclude._(
      template: template,
      item: item,
    );
  }

  static MessageTemplateAttachmentIncludeList includeList({
    _i1.WhereExpressionBuilder<MessageTemplateAttachmentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageTemplateAttachmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTemplateAttachmentTable>? orderByList,
    MessageTemplateAttachmentInclude? include,
  }) {
    return MessageTemplateAttachmentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MessageTemplateAttachment.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(MessageTemplateAttachment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MessageTemplateAttachmentImpl extends MessageTemplateAttachment {
  _MessageTemplateAttachmentImpl({
    int? id,
    required int templateId,
    _i2.MessageTemplate? template,
    required int itemId,
    _i3.ItemInfo? item,
    required int qty,
  }) : super._(
          id: id,
          templateId: templateId,
          template: template,
          itemId: itemId,
          item: item,
          qty: qty,
        );

  /// Returns a shallow copy of this [MessageTemplateAttachment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MessageTemplateAttachment copyWith({
    Object? id = _Undefined,
    int? templateId,
    Object? template = _Undefined,
    int? itemId,
    Object? item = _Undefined,
    int? qty,
  }) {
    return MessageTemplateAttachment(
      id: id is int? ? id : this.id,
      templateId: templateId ?? this.templateId,
      template: template is _i2.MessageTemplate?
          ? template
          : this.template?.copyWith(),
      itemId: itemId ?? this.itemId,
      item: item is _i3.ItemInfo? ? item : this.item?.copyWith(),
      qty: qty ?? this.qty,
    );
  }
}

class MessageTemplateAttachmentTable extends _i1.Table<int?> {
  MessageTemplateAttachmentTable({super.tableRelation})
      : super(tableName: 'message_table_attachments') {
    templateId = _i1.ColumnInt(
      'templateId',
      this,
    );
    itemId = _i1.ColumnInt(
      'itemId',
      this,
    );
    qty = _i1.ColumnInt(
      'qty',
      this,
    );
  }

  late final _i1.ColumnInt templateId;

  _i2.MessageTemplateTable? _template;

  late final _i1.ColumnInt itemId;

  _i3.ItemInfoTable? _item;

  late final _i1.ColumnInt qty;

  _i2.MessageTemplateTable get template {
    if (_template != null) return _template!;
    _template = _i1.createRelationTable(
      relationFieldName: 'template',
      field: MessageTemplateAttachment.t.templateId,
      foreignField: _i2.MessageTemplate.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MessageTemplateTable(tableRelation: foreignTableRelation),
    );
    return _template!;
  }

  _i3.ItemInfoTable get item {
    if (_item != null) return _item!;
    _item = _i1.createRelationTable(
      relationFieldName: 'item',
      field: MessageTemplateAttachment.t.itemId,
      foreignField: _i3.ItemInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.ItemInfoTable(tableRelation: foreignTableRelation),
    );
    return _item!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        templateId,
        itemId,
        qty,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'template') {
      return template;
    }
    if (relationField == 'item') {
      return item;
    }
    return null;
  }
}

class MessageTemplateAttachmentInclude extends _i1.IncludeObject {
  MessageTemplateAttachmentInclude._({
    _i2.MessageTemplateInclude? template,
    _i3.ItemInfoInclude? item,
  }) {
    _template = template;
    _item = item;
  }

  _i2.MessageTemplateInclude? _template;

  _i3.ItemInfoInclude? _item;

  @override
  Map<String, _i1.Include?> get includes => {
        'template': _template,
        'item': _item,
      };

  @override
  _i1.Table<int?> get table => MessageTemplateAttachment.t;
}

class MessageTemplateAttachmentIncludeList extends _i1.IncludeList {
  MessageTemplateAttachmentIncludeList._({
    _i1.WhereExpressionBuilder<MessageTemplateAttachmentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(MessageTemplateAttachment.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => MessageTemplateAttachment.t;
}

class MessageTemplateAttachmentRepository {
  const MessageTemplateAttachmentRepository._();

  final attachRow = const MessageTemplateAttachmentAttachRowRepository._();

  /// Returns a list of [MessageTemplateAttachment]s matching the given query parameters.
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
  Future<List<MessageTemplateAttachment>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTemplateAttachmentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageTemplateAttachmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTemplateAttachmentTable>? orderByList,
    _i1.Transaction? transaction,
    MessageTemplateAttachmentInclude? include,
  }) async {
    return session.db.find<MessageTemplateAttachment>(
      where: where?.call(MessageTemplateAttachment.t),
      orderBy: orderBy?.call(MessageTemplateAttachment.t),
      orderByList: orderByList?.call(MessageTemplateAttachment.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [MessageTemplateAttachment] matching the given query parameters.
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
  Future<MessageTemplateAttachment?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTemplateAttachmentTable>? where,
    int? offset,
    _i1.OrderByBuilder<MessageTemplateAttachmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTemplateAttachmentTable>? orderByList,
    _i1.Transaction? transaction,
    MessageTemplateAttachmentInclude? include,
  }) async {
    return session.db.findFirstRow<MessageTemplateAttachment>(
      where: where?.call(MessageTemplateAttachment.t),
      orderBy: orderBy?.call(MessageTemplateAttachment.t),
      orderByList: orderByList?.call(MessageTemplateAttachment.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [MessageTemplateAttachment] by its [id] or null if no such row exists.
  Future<MessageTemplateAttachment?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    MessageTemplateAttachmentInclude? include,
  }) async {
    return session.db.findById<MessageTemplateAttachment>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [MessageTemplateAttachment]s in the list and returns the inserted rows.
  ///
  /// The returned [MessageTemplateAttachment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<MessageTemplateAttachment>> insert(
    _i1.Session session,
    List<MessageTemplateAttachment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<MessageTemplateAttachment>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [MessageTemplateAttachment] and returns the inserted row.
  ///
  /// The returned [MessageTemplateAttachment] will have its `id` field set.
  Future<MessageTemplateAttachment> insertRow(
    _i1.Session session,
    MessageTemplateAttachment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<MessageTemplateAttachment>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [MessageTemplateAttachment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<MessageTemplateAttachment>> update(
    _i1.Session session,
    List<MessageTemplateAttachment> rows, {
    _i1.ColumnSelections<MessageTemplateAttachmentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<MessageTemplateAttachment>(
      rows,
      columns: columns?.call(MessageTemplateAttachment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [MessageTemplateAttachment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<MessageTemplateAttachment> updateRow(
    _i1.Session session,
    MessageTemplateAttachment row, {
    _i1.ColumnSelections<MessageTemplateAttachmentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<MessageTemplateAttachment>(
      row,
      columns: columns?.call(MessageTemplateAttachment.t),
      transaction: transaction,
    );
  }

  /// Deletes all [MessageTemplateAttachment]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<MessageTemplateAttachment>> delete(
    _i1.Session session,
    List<MessageTemplateAttachment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MessageTemplateAttachment>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [MessageTemplateAttachment].
  Future<MessageTemplateAttachment> deleteRow(
    _i1.Session session,
    MessageTemplateAttachment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<MessageTemplateAttachment>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<MessageTemplateAttachment>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MessageTemplateAttachmentTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<MessageTemplateAttachment>(
      where: where(MessageTemplateAttachment.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTemplateAttachmentTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MessageTemplateAttachment>(
      where: where?.call(MessageTemplateAttachment.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class MessageTemplateAttachmentAttachRowRepository {
  const MessageTemplateAttachmentAttachRowRepository._();

  /// Creates a relation between the given [MessageTemplateAttachment] and [MessageTemplate]
  /// by setting the [MessageTemplateAttachment]'s foreign key `templateId` to refer to the [MessageTemplate].
  Future<void> template(
    _i1.Session session,
    MessageTemplateAttachment messageTemplateAttachment,
    _i2.MessageTemplate template, {
    _i1.Transaction? transaction,
  }) async {
    if (messageTemplateAttachment.id == null) {
      throw ArgumentError.notNull('messageTemplateAttachment.id');
    }
    if (template.id == null) {
      throw ArgumentError.notNull('template.id');
    }

    var $messageTemplateAttachment =
        messageTemplateAttachment.copyWith(templateId: template.id);
    await session.db.updateRow<MessageTemplateAttachment>(
      $messageTemplateAttachment,
      columns: [MessageTemplateAttachment.t.templateId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [MessageTemplateAttachment] and [ItemInfo]
  /// by setting the [MessageTemplateAttachment]'s foreign key `itemId` to refer to the [ItemInfo].
  Future<void> item(
    _i1.Session session,
    MessageTemplateAttachment messageTemplateAttachment,
    _i3.ItemInfo item, {
    _i1.Transaction? transaction,
  }) async {
    if (messageTemplateAttachment.id == null) {
      throw ArgumentError.notNull('messageTemplateAttachment.id');
    }
    if (item.id == null) {
      throw ArgumentError.notNull('item.id');
    }

    var $messageTemplateAttachment =
        messageTemplateAttachment.copyWith(itemId: item.id);
    await session.db.updateRow<MessageTemplateAttachment>(
      $messageTemplateAttachment,
      columns: [MessageTemplateAttachment.t.itemId],
      transaction: transaction,
    );
  }
}
