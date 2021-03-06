// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sqliteModel.dart';

// **************************************************************************
// SqfEntityGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names

//  These classes was generated by SqfEntity
//  Copyright (c) 2019, All rights reserved. Use of this source code is governed by a
//  Apache license that can be found in the LICENSE file.

//  To use these SqfEntity classes do following:
//  - import model.dart into where to use
//  - start typing ex:Account.select()... (add a few filters with fluent methods)...(add orderBy/orderBydesc if you want)...
//  - and then just put end of filters / or end of only select()  toSingle() / or toList()
//  - you can select one or return List<yourObject> by your filters and orders
//  - also you can batch update or batch delete by using delete/update methods instead of tosingle/tolist methods
//    Enjoy.. Huseyin Tokpunar

// BEGIN TABLES
// Account TABLE
class TableAccount extends SqfEntityTableBase {
  TableAccount() {
    // declare properties of EntityTable
    tableName = 'account';

    useSoftDeleting = false;
    // when useSoftDeleting is true, creates a field named 'isDeleted' on the table, and set to '1' this field when item deleted (does not hard delete)

    // declare fields
    fields = [
      SqfEntityFieldBase('id', DbType.integer, isPrimaryKeyField: true),
      SqfEntityFieldBase('userId', DbType.text),
      SqfEntityFieldBase('email', DbType.text),
      SqfEntityFieldBase('fullName', DbType.text),
      SqfEntityFieldBase('gender', DbType.text),
      SqfEntityFieldBase('address', DbType.text),
      SqfEntityFieldBase('phone', DbType.text),
      SqfEntityFieldBase('birthDate', DbType.text),
    ];
    super.init();
  }
  static SqfEntityTableBase? _instance;
  static SqfEntityTableBase get getInstance {
    return _instance = _instance ?? TableAccount();
  }
}
// END TABLES

// BEGIN SEQUENCES
// identity SEQUENCE
class SequenceIdentitySequence extends SqfEntitySequenceBase {
  SequenceIdentitySequence() {
    sequenceName = 'identity';
    maxValue =
        9007199254740991; /* optional. default is max int (9.223.372.036.854.775.807) */
    cycle = false; /* optional. default is false; */
    minValue = 0; /* optional. default is 0 */
    incrementBy = 1; /* optional. default is 1 */
    startWith = 0; /* optional. default is 0 */
    super.init();
  }
  static SequenceIdentitySequence? _instance;
  static SequenceIdentitySequence get getInstance {
    return _instance = _instance ?? SequenceIdentitySequence();
  }
}
// END SEQUENCES

// BEGIN DATABASE MODEL
class AwesomeDBModel extends SqfEntityModelProvider {
  AwesomeDBModel() {
    databaseName = dbModel.databaseName;
    password = dbModel.password;
    dbVersion = dbModel.dbVersion;
    preSaveAction = dbModel.preSaveAction;
    logFunction = dbModel.logFunction;
    databaseTables = [
      TableAccount.getInstance,
    ];

    sequences = [
      SequenceIdentitySequence.getInstance,
    ];

    bundledDatabasePath = dbModel
        .bundledDatabasePath; //'assets/sample.db'; // This value is optional. When bundledDatabasePath is empty then EntityBase creats a new database when initializing the database
    databasePath = dbModel.databasePath;
  }
  Map<String, dynamic> getControllers() {
    final controllers = <String, dynamic>{};

    return controllers;
  }
}
// END DATABASE MODEL

// BEGIN ENTITIES
// region Account
class Account extends TableBase {
  Account(
      {this.id,
      this.userId,
      this.email,
      this.fullName,
      this.gender,
      this.address,
      this.phone,
      this.birthDate}) {
    _setDefaultValues();
    softDeleteActivated = false;
  }
  Account.withFields(this.id, this.userId, this.email, this.fullName,
      this.gender, this.address, this.phone, this.birthDate) {
    _setDefaultValues();
  }
  Account.withId(this.id, this.userId, this.email, this.fullName, this.gender,
      this.address, this.phone, this.birthDate) {
    _setDefaultValues();
  }
  // fromMap v2.0
  Account.fromMap(Map<String, dynamic> o, {bool setDefaultValues = true}) {
    if (setDefaultValues) {
      _setDefaultValues();
    }
    if (o['id'] != null) {
      id = int.tryParse(o['id'].toString());
    }
    if (o['userId'] != null) {
      userId = o['userId'].toString();
    }
    if (o['email'] != null) {
      email = o['email'].toString();
    }
    if (o['fullName'] != null) {
      fullName = o['fullName'].toString();
    }
    if (o['gender'] != null) {
      gender = o['gender'].toString();
    }
    if (o['address'] != null) {
      address = o['address'].toString();
    }
    if (o['phone'] != null) {
      phone = o['phone'].toString();
    }
    if (o['birthDate'] != null) {
      birthDate = o['birthDate'].toString();
    }

    isSaved = true;
  }
  // FIELDS (Account)
  int? id;
  String? userId;
  String? email;
  String? fullName;
  String? gender;
  String? address;
  String? phone;
  String? birthDate;
  bool? isSaved;
  // end FIELDS (Account)

  static const bool _softDeleteActivated = false;
  AccountManager? __mnAccount;

  AccountManager get _mnAccount {
    return __mnAccount = __mnAccount ?? AccountManager();
  }

  // METHODS
  @override
  Map<String, dynamic> toMap(
      {bool forQuery = false, bool forJson = false, bool forView = false}) {
    final map = <String, dynamic>{};
    if (id != null || !forView) {
      map['id'] = id;
    }
    if (userId != null || !forView) {
      map['userId'] = userId;
    }
    if (email != null || !forView) {
      map['email'] = email;
    }
    if (fullName != null || !forView) {
      map['fullName'] = fullName;
    }
    if (gender != null || !forView) {
      map['gender'] = gender;
    }
    if (address != null || !forView) {
      map['address'] = address;
    }
    if (phone != null || !forView) {
      map['phone'] = phone;
    }
    if (birthDate != null || !forView) {
      map['birthDate'] = birthDate;
    }

    return map;
  }

  @override
  Future<Map<String, dynamic>> toMapWithChildren(
      [bool forQuery = false,
      bool forJson = false,
      bool forView = false]) async {
    final map = <String, dynamic>{};
    if (id != null || !forView) {
      map['id'] = id;
    }
    if (userId != null || !forView) {
      map['userId'] = userId;
    }
    if (email != null || !forView) {
      map['email'] = email;
    }
    if (fullName != null || !forView) {
      map['fullName'] = fullName;
    }
    if (gender != null || !forView) {
      map['gender'] = gender;
    }
    if (address != null || !forView) {
      map['address'] = address;
    }
    if (phone != null || !forView) {
      map['phone'] = phone;
    }
    if (birthDate != null || !forView) {
      map['birthDate'] = birthDate;
    }

    return map;
  }

  /// This method returns Json String [Account]
  @override
  String toJson() {
    return json.encode(toMap(forJson: true));
  }

  /// This method returns Json String [Account]
  @override
  Future<String> toJsonWithChilds() async {
    return json.encode(await toMapWithChildren(false, true));
  }

  @override
  List<dynamic> toArgs() {
    return [id, userId, email, fullName, gender, address, phone, birthDate];
  }

  @override
  List<dynamic> toArgsWithIds() {
    return [id, userId, email, fullName, gender, address, phone, birthDate];
  }

  static Future<List<Account>?> fromWebUrl(Uri uri,
      {Map<String, String>? headers}) async {
    try {
      final response = await http.get(uri, headers: headers);
      return await fromJson(response.body);
    } catch (e) {
      debugPrint(
          'SQFENTITY ERROR Account.fromWebUrl: ErrorMessage: ${e.toString()}');
      return null;
    }
  }

  Future<http.Response> postUrl(Uri uri, {Map<String, String>? headers}) {
    return http.post(uri, headers: headers, body: toJson());
  }

  static Future<List<Account>> fromJson(String jsonBody) async {
    final Iterable list = await json.decode(jsonBody) as Iterable;
    var objList = <Account>[];
    try {
      objList = list
          .map((account) => Account.fromMap(account as Map<String, dynamic>))
          .toList();
    } catch (e) {
      debugPrint(
          'SQFENTITY ERROR Account.fromJson: ErrorMessage: ${e.toString()}');
    }
    return objList;
  }

  static Future<List<Account>> fromMapList(List<dynamic> data,
      {bool preload = false,
      List<String>? preloadFields,
      bool loadParents = false,
      List<String>? loadedFields,
      bool setDefaultValues = true}) async {
    final List<Account> objList = <Account>[];
    loadedFields = loadedFields ?? [];
    for (final map in data) {
      final obj = Account.fromMap(map as Map<String, dynamic>,
          setDefaultValues: setDefaultValues);

      objList.add(obj);
    }
    return objList;
  }

  /// returns Account by ID if exist, otherwise returns null
  /// Primary Keys: int? id
  /// bool preload: if true, loads all related child objects (Set preload to true if you want to load all fields related to child or parent)
  /// ex: getById(preload:true) -> Loads all related objects
  /// List<String> preloadFields: specify the fields you want to preload (preload parameter's value should also be "true")
  /// ex: getById(preload:true, preloadFields:['plField1','plField2'... etc])  -> Loads only certain fields what you specified
  /// bool loadParents: if true, loads all parent objects until the object has no parent

  /// <returns>returns [Account] if exist, otherwise returns null
  Future<Account?> getById(int? id,
      {bool preload = false,
      List<String>? preloadFields,
      bool loadParents = false,
      List<String>? loadedFields}) async {
    if (id == null) {
      return null;
    }
    Account? obj;
    final data = await _mnAccount.getById([id]);
    if (data.length != 0) {
      obj = Account.fromMap(data[0] as Map<String, dynamic>);
    } else {
      obj = null;
    }
    return obj;
  }

  /// Saves the (Account) object. If the id field is null, saves as a new record and returns new id, if id is not null then updates record
  /// ignoreBatch = true as a default. Set ignoreBatch to false if you run more than one save() operation those are between batchStart and batchCommit
  /// <returns>Returns id
  @override
  Future<int?> save({bool ignoreBatch = true}) async {
    if (id == null || id == 0 || !isSaved!) {
      await _mnAccount.insert(this, ignoreBatch);
      if (saveResult!.success) {
        isSaved = true;
      }
    } else {
      await _mnAccount.update(this);
    }

    return id;
  }

  /// Saves the (Account) object. If the id field is null, saves as a new record and returns new id, if id is not null then updates record
  /// ignoreBatch = true as a default. Set ignoreBatch to false if you run more than one save() operation those are between batchStart and batchCommit
  /// <returns>Returns id
  @override
  Future<int?> saveOrThrow({bool ignoreBatch = true}) async {
    if (id == null || id == 0 || !isSaved!) {
      await _mnAccount.insertOrThrow(this, ignoreBatch);
      if (saveResult != null && saveResult!.success) {
        isSaved = true;
      }
      isInsert = true;
    } else {
      // id= await _upsert(); // removed in sqfentity_gen 1.3.0+6
      await _mnAccount.updateOrThrow(this);
    }

    return id;
  }

  /// saveAll method saves the sent List<Account> as a bulk in one transaction
  /// Returns a <List<BoolResult>>
  static Future<List<dynamic>> saveAll(List<Account> accounts,
      {bool? exclusive, bool? noResult, bool? continueOnError}) async {
    List<dynamic>? result = [];
    // If there is no open transaction, start one
    final isStartedBatch = await AwesomeDBModel().batchStart();
    for (final obj in accounts) {
      await obj.save(ignoreBatch: false);
    }
    if (!isStartedBatch) {
      result = await AwesomeDBModel().batchCommit(
          exclusive: exclusive,
          noResult: noResult,
          continueOnError: continueOnError);
      for (int i = 0; i < accounts.length; i++) {
        if (accounts[i].id == null) {
          accounts[i].id = result![i] as int;
        }
      }
    }
    return result!;
  }

  /// Updates if the record exists, otherwise adds a new row
  /// <returns>Returns id
  @override
  Future<int?> upsert({bool ignoreBatch = true}) async {
    try {
      final result = await _mnAccount.rawInsert(
          'INSERT OR REPLACE INTO account ( id, userId, email, fullName, gender, address, phone, birthDate)  VALUES (?,?,?,?,?,?,?,?)',
          [id, userId, email, fullName, gender, address, phone, birthDate],
          ignoreBatch);
      if (result! > 0) {
        saveResult = BoolResult(
            success: true,
            successMessage: 'Account id=$id updated successfully');
      } else {
        saveResult = BoolResult(
            success: false, errorMessage: 'Account id=$id did not update');
      }
      return id;
    } catch (e) {
      saveResult = BoolResult(
          success: false,
          errorMessage: 'Account Save failed. Error: ${e.toString()}');
      return null;
    }
  }

  /// inserts or replaces the sent List<<Account>> as a bulk in one transaction.
  /// upsertAll() method is faster then saveAll() method. upsertAll() should be used when you are sure that the primary key is greater than zero
  /// Returns a BoolCommitResult
  @override
  Future<BoolCommitResult> upsertAll(List<Account> accounts,
      {bool? exclusive, bool? noResult, bool? continueOnError}) async {
    final results = await _mnAccount.rawInsertAll(
        'INSERT OR REPLACE INTO account ( id, userId, email, fullName, gender, address, phone, birthDate)  VALUES (?,?,?,?,?,?,?,?)',
        accounts,
        exclusive: exclusive,
        noResult: noResult,
        continueOnError: continueOnError);
    return results;
  }

  /// Deletes Account

  /// <returns>BoolResult res.success= true (Deleted), false (Could not be deleted)
  @override
  Future<BoolResult> delete([bool hardDelete = false]) async {
    debugPrint('SQFENTITIY: delete Account invoked (id=$id)');
    if (!_softDeleteActivated || hardDelete) {
      return _mnAccount
          .delete(QueryParams(whereString: 'id=?', whereArguments: [id]));
    } else {
      return _mnAccount.updateBatch(
          QueryParams(whereString: 'id=?', whereArguments: [id]),
          {'isDeleted': 1});
    }
  }

  @override
  Future<BoolResult> recover([bool recoverChilds = true]) {
    // not implemented because:
    final msg =
        'set useSoftDeleting:true in the table definition of [Account] to use this feature';
    throw UnimplementedError(msg);
  }

  @override
  AccountFilterBuilder select(
      {List<String>? columnsToSelect, bool? getIsDeleted}) {
    return AccountFilterBuilder(this, getIsDeleted)
      ..qparams.selectColumns = columnsToSelect;
  }

  @override
  AccountFilterBuilder distinct(
      {List<String>? columnsToSelect, bool? getIsDeleted}) {
    return AccountFilterBuilder(this, getIsDeleted)
      ..qparams.selectColumns = columnsToSelect
      ..qparams.distinct = true;
  }

  void _setDefaultValues() {
    isSaved = false;
  }

  @override
  void rollbackPk() {
    if (isInsert == true) {
      id = null;
    }
  }

  // END METHODS
  // BEGIN CUSTOM CODE
  /*
      you can define customCode property of your SqfEntityTable constant. For example:
      const tablePerson = SqfEntityTable(
      tableName: 'person',
      primaryKeyName: 'id',
      primaryKeyType: PrimaryKeyType.integer_auto_incremental,
      fields: [
        SqfEntityField('firstName', DbType.text),
        SqfEntityField('lastName', DbType.text),
      ],
      customCode: '''
       String fullName()
       { 
         return '$firstName $lastName';
       }
      ''');
     */
  // END CUSTOM CODE
}
// endregion account

// region AccountField
class AccountField extends FilterBase {
  AccountField(AccountFilterBuilder accountFB) : super(accountFB);

  @override
  AccountFilterBuilder equals(dynamic pValue) {
    return super.equals(pValue) as AccountFilterBuilder;
  }

  @override
  AccountFilterBuilder equalsOrNull(dynamic pValue) {
    return super.equalsOrNull(pValue) as AccountFilterBuilder;
  }

  @override
  AccountFilterBuilder isNull() {
    return super.isNull() as AccountFilterBuilder;
  }

  @override
  AccountFilterBuilder contains(dynamic pValue) {
    return super.contains(pValue) as AccountFilterBuilder;
  }

  @override
  AccountFilterBuilder startsWith(dynamic pValue) {
    return super.startsWith(pValue) as AccountFilterBuilder;
  }

  @override
  AccountFilterBuilder endsWith(dynamic pValue) {
    return super.endsWith(pValue) as AccountFilterBuilder;
  }

  @override
  AccountFilterBuilder between(dynamic pFirst, dynamic pLast) {
    return super.between(pFirst, pLast) as AccountFilterBuilder;
  }

  @override
  AccountFilterBuilder greaterThan(dynamic pValue) {
    return super.greaterThan(pValue) as AccountFilterBuilder;
  }

  @override
  AccountFilterBuilder lessThan(dynamic pValue) {
    return super.lessThan(pValue) as AccountFilterBuilder;
  }

  @override
  AccountFilterBuilder greaterThanOrEquals(dynamic pValue) {
    return super.greaterThanOrEquals(pValue) as AccountFilterBuilder;
  }

  @override
  AccountFilterBuilder lessThanOrEquals(dynamic pValue) {
    return super.lessThanOrEquals(pValue) as AccountFilterBuilder;
  }

  @override
  AccountFilterBuilder inValues(dynamic pValue) {
    return super.inValues(pValue) as AccountFilterBuilder;
  }

  @override
  AccountField get not {
    return super.not as AccountField;
  }
}
// endregion AccountField

// region AccountFilterBuilder
class AccountFilterBuilder extends ConjunctionBase {
  AccountFilterBuilder(Account obj, bool? getIsDeleted)
      : super(obj, getIsDeleted) {
    _mnAccount = obj._mnAccount;
    _softDeleteActivated = obj.softDeleteActivated;
  }

  bool _softDeleteActivated = false;
  AccountManager? _mnAccount;

  /// put the sql keyword 'AND'
  @override
  AccountFilterBuilder get and {
    super.and;
    return this;
  }

  /// put the sql keyword 'OR'
  @override
  AccountFilterBuilder get or {
    super.or;
    return this;
  }

  /// open parentheses
  @override
  AccountFilterBuilder get startBlock {
    super.startBlock;
    return this;
  }

  /// String whereCriteria, write raw query without 'where' keyword. Like this: 'field1 like 'test%' and field2 = 3'
  @override
  AccountFilterBuilder where(String? whereCriteria, {dynamic parameterValue}) {
    super.where(whereCriteria, parameterValue: parameterValue);
    return this;
  }

  /// page = page number,
  /// pagesize = row(s) per page
  @override
  AccountFilterBuilder page(int page, int pagesize) {
    super.page(page, pagesize);
    return this;
  }

  /// int count = LIMIT
  @override
  AccountFilterBuilder top(int count) {
    super.top(count);
    return this;
  }

  /// close parentheses
  @override
  AccountFilterBuilder get endBlock {
    super.endBlock;
    return this;
  }

  /// argFields might be String or List<String>.
  /// Example 1: argFields='name, date'
  /// Example 2: argFields = ['name', 'date']
  @override
  AccountFilterBuilder orderBy(dynamic argFields) {
    super.orderBy(argFields);
    return this;
  }

  /// argFields might be String or List<String>.
  /// Example 1: argFields='field1, field2'
  /// Example 2: argFields = ['field1', 'field2']
  @override
  AccountFilterBuilder orderByDesc(dynamic argFields) {
    super.orderByDesc(argFields);
    return this;
  }

  /// argFields might be String or List<String>.
  /// Example 1: argFields='field1, field2'
  /// Example 2: argFields = ['field1', 'field2']
  @override
  AccountFilterBuilder groupBy(dynamic argFields) {
    super.groupBy(argFields);
    return this;
  }

  /// argFields might be String or List<String>.
  /// Example 1: argFields='name, date'
  /// Example 2: argFields = ['name', 'date']
  @override
  AccountFilterBuilder having(dynamic argFields) {
    super.having(argFields);
    return this;
  }

  AccountField _setField(AccountField? field, String colName, DbType dbtype) {
    return AccountField(this)
      ..param = DbParameter(
          dbType: dbtype, columnName: colName, wStartBlock: openedBlock);
  }

  AccountField? _id;
  AccountField get id {
    return _id = _setField(_id, 'id', DbType.integer);
  }

  AccountField? _userId;
  AccountField get userId {
    return _userId = _setField(_userId, 'userId', DbType.text);
  }

  AccountField? _email;
  AccountField get email {
    return _email = _setField(_email, 'email', DbType.text);
  }

  AccountField? _fullName;
  AccountField get fullName {
    return _fullName = _setField(_fullName, 'fullName', DbType.text);
  }

  AccountField? _gender;
  AccountField get gender {
    return _gender = _setField(_gender, 'gender', DbType.text);
  }

  AccountField? _address;
  AccountField get address {
    return _address = _setField(_address, 'address', DbType.text);
  }

  AccountField? _phone;
  AccountField get phone {
    return _phone = _setField(_phone, 'phone', DbType.text);
  }

  AccountField? _birthDate;
  AccountField get birthDate {
    return _birthDate = _setField(_birthDate, 'birthDate', DbType.text);
  }

  /// Deletes List<Account> bulk by query
  ///
  /// <returns>BoolResult res.success= true (Deleted), false (Could not be deleted)
  @override
  Future<BoolResult> delete([bool hardDelete = false]) async {
    buildParameters();
    var r = BoolResult(success: false);

    if (_softDeleteActivated && !hardDelete) {
      r = await _mnAccount!.updateBatch(qparams, {'isDeleted': 1});
    } else {
      r = await _mnAccount!.delete(qparams);
    }
    return r;
  }

  /// using:
  /// update({'fieldName': Value})
  /// fieldName must be String. Value is dynamic, it can be any of the (int, bool, String.. )
  @override
  Future<BoolResult> update(Map<String, dynamic> values) {
    buildParameters();
    if (qparams.limit! > 0 || qparams.offset! > 0) {
      qparams.whereString =
          'id IN (SELECT id from account ${qparams.whereString!.isNotEmpty ? 'WHERE ${qparams.whereString}' : ''}${qparams.limit! > 0 ? ' LIMIT ${qparams.limit}' : ''}${qparams.offset! > 0 ? ' OFFSET ${qparams.offset}' : ''})';
    }
    return _mnAccount!.updateBatch(qparams, values);
  }

  /// This method always returns [Account] Obj if exist, otherwise returns null
  /// bool preload: if true, loads all related child objects (Set preload to true if you want to load all fields related to child or parent)
  /// ex: toSingle(preload:true) -> Loads all related objects
  /// List<String> preloadFields: specify the fields you want to preload (preload parameter's value should also be "true")
  /// ex: toSingle(preload:true, preloadFields:['plField1','plField2'... etc])  -> Loads only certain fields what you specified
  /// bool loadParents: if true, loads all parent objects until the object has no parent

  /// <returns> Account?
  @override
  Future<Account?> toSingle(
      {bool preload = false,
      List<String>? preloadFields,
      bool loadParents = false,
      List<String>? loadedFields}) async {
    buildParameters(pSize: 1);
    final objFuture = _mnAccount!.toList(qparams);
    final data = await objFuture;
    Account? obj;
    if (data.isNotEmpty) {
      obj = Account.fromMap(data[0] as Map<String, dynamic>);
    } else {
      obj = null;
    }
    return obj;
  }

  /// This method always returns [Account]
  /// bool preload: if true, loads all related child objects (Set preload to true if you want to load all fields related to child or parent)
  /// ex: toSingle(preload:true) -> Loads all related objects
  /// List<String> preloadFields: specify the fields you want to preload (preload parameter's value should also be "true")
  /// ex: toSingle(preload:true, preloadFields:['plField1','plField2'... etc])  -> Loads only certain fields what you specified
  /// bool loadParents: if true, loads all parent objects until the object has no parent

  /// <returns> Account?
  @override
  Future<Account> toSingleOrDefault(
      {bool preload = false,
      List<String>? preloadFields,
      bool loadParents = false,
      List<String>? loadedFields}) async {
    return await toSingle(
            preload: preload,
            preloadFields: preloadFields,
            loadParents: loadParents,
            loadedFields: loadedFields) ??
        Account();
  }

  /// This method returns int. [Account]
  /// <returns>int
  @override
  Future<int> toCount([VoidCallback Function(int c)? accountCount]) async {
    buildParameters();
    qparams.selectColumns = ['COUNT(1) AS CNT'];
    final accountsFuture = await _mnAccount!.toList(qparams);
    final int count = accountsFuture[0]['CNT'] as int;
    if (accountCount != null) {
      accountCount(count);
    }
    return count;
  }

  /// This method returns List<Account> [Account]
  /// bool preload: if true, loads all related child objects (Set preload to true if you want to load all fields related to child or parent)
  /// ex: toList(preload:true) -> Loads all related objects
  /// List<String> preloadFields: specify the fields you want to preload (preload parameter's value should also be "true")
  /// ex: toList(preload:true, preloadFields:['plField1','plField2'... etc])  -> Loads only certain fields what you specified
  /// bool loadParents: if true, loads all parent objects until the object has no parent

  /// <returns>List<Account>
  @override
  Future<List<Account>> toList(
      {bool preload = false,
      List<String>? preloadFields,
      bool loadParents = false,
      List<String>? loadedFields}) async {
    final data = await toMapList();
    final List<Account> accountsData = await Account.fromMapList(data,
        preload: preload,
        preloadFields: preloadFields,
        loadParents: loadParents,
        loadedFields: loadedFields,
        setDefaultValues: qparams.selectColumns == null);
    return accountsData;
  }

  /// This method returns Json String [Account]
  @override
  Future<String> toJson() async {
    final list = <dynamic>[];
    final data = await toList();
    for (var o in data) {
      list.add(o.toMap(forJson: true));
    }
    return json.encode(list);
  }

  /// This method returns Json String. [Account]
  @override
  Future<String> toJsonWithChilds() async {
    final list = <dynamic>[];
    final data = await toList();
    for (var o in data) {
      list.add(await o.toMapWithChildren(false, true));
    }
    return json.encode(list);
  }

  /// This method returns List<dynamic>. [Account]
  /// <returns>List<dynamic>
  @override
  Future<List<dynamic>> toMapList() async {
    buildParameters();
    return await _mnAccount!.toList(qparams);
  }

  /// This method returns Primary Key List SQL and Parameters retVal = Map<String,dynamic>. [Account]
  /// retVal['sql'] = SQL statement string, retVal['args'] = whereArguments List<dynamic>;
  /// <returns>List<String>
  @override
  Map<String, dynamic> toListPrimaryKeySQL([bool buildParams = true]) {
    final Map<String, dynamic> _retVal = <String, dynamic>{};
    if (buildParams) {
      buildParameters();
    }
    _retVal['sql'] = 'SELECT `id` FROM account WHERE ${qparams.whereString}';
    _retVal['args'] = qparams.whereArguments;
    return _retVal;
  }

  /// This method returns Primary Key List<int>.
  /// <returns>List<int>
  @override
  Future<List<int>> toListPrimaryKey([bool buildParams = true]) async {
    if (buildParams) {
      buildParameters();
    }
    final List<int> idData = <int>[];
    qparams.selectColumns = ['id'];
    final idFuture = await _mnAccount!.toList(qparams);

    final int count = idFuture.length;
    for (int i = 0; i < count; i++) {
      idData.add(idFuture[i]['id'] as int);
    }
    return idData;
  }

  /// Returns List<dynamic> for selected columns. Use this method for 'groupBy' with min,max,avg..  [Account]
  /// Sample usage: (see EXAMPLE 4.2 at https://github.com/hhtokpinar/sqfEntity#group-by)
  @override
  Future<List<dynamic>> toListObject() async {
    buildParameters();

    final objectFuture = _mnAccount!.toList(qparams);

    final List<dynamic> objectsData = <dynamic>[];
    final data = await objectFuture;
    final int count = data.length;
    for (int i = 0; i < count; i++) {
      objectsData.add(data[i]);
    }
    return objectsData;
  }

  /// Returns List<String> for selected first column
  /// Sample usage: await Account.select(columnsToSelect: ['columnName']).toListString()
  @override
  Future<List<String>> toListString(
      [VoidCallback Function(List<String> o)? listString]) async {
    buildParameters();

    final objectFuture = _mnAccount!.toList(qparams);

    final List<String> objectsData = <String>[];
    final data = await objectFuture;
    final int count = data.length;
    for (int i = 0; i < count; i++) {
      objectsData.add(data[i][qparams.selectColumns![0]].toString());
    }
    if (listString != null) {
      listString(objectsData);
    }
    return objectsData;
  }
}
// endregion AccountFilterBuilder

// region AccountFields
class AccountFields {
  static TableField? _fId;
  static TableField get id {
    return _fId = _fId ?? SqlSyntax.setField(_fId, 'id', DbType.integer);
  }

  static TableField? _fUserId;
  static TableField get userId {
    return _fUserId =
        _fUserId ?? SqlSyntax.setField(_fUserId, 'userId', DbType.text);
  }

  static TableField? _fEmail;
  static TableField get email {
    return _fEmail =
        _fEmail ?? SqlSyntax.setField(_fEmail, 'email', DbType.text);
  }

  static TableField? _fFullName;
  static TableField get fullName {
    return _fFullName =
        _fFullName ?? SqlSyntax.setField(_fFullName, 'fullName', DbType.text);
  }

  static TableField? _fGender;
  static TableField get gender {
    return _fGender =
        _fGender ?? SqlSyntax.setField(_fGender, 'gender', DbType.text);
  }

  static TableField? _fAddress;
  static TableField get address {
    return _fAddress =
        _fAddress ?? SqlSyntax.setField(_fAddress, 'address', DbType.text);
  }

  static TableField? _fPhone;
  static TableField get phone {
    return _fPhone =
        _fPhone ?? SqlSyntax.setField(_fPhone, 'phone', DbType.text);
  }

  static TableField? _fBirthDate;
  static TableField get birthDate {
    return _fBirthDate = _fBirthDate ??
        SqlSyntax.setField(_fBirthDate, 'birthDate', DbType.text);
  }
}
// endregion AccountFields

//region AccountManager
class AccountManager extends SqfEntityProvider {
  AccountManager()
      : super(AwesomeDBModel(),
            tableName: _tableName,
            primaryKeyList: _primaryKeyList,
            whereStr: _whereStr);
  static const String _tableName = 'account';
  static const List<String> _primaryKeyList = ['id'];
  static const String _whereStr = 'id=?';
}

//endregion AccountManager
/// Region SEQUENCE IdentitySequence
class IdentitySequence {
  /// Assigns a new value when it is triggered and returns the new value
  /// returns Future<int>
  Future<int> nextVal([VoidCallback Function(int o)? nextval]) async {
    final val = await AwesomeDBModelSequenceManager()
        .sequence(SequenceIdentitySequence.getInstance, true);
    if (nextval != null) {
      nextval(val);
    }
    return val;
  }

  /// Get the current value
  /// returns Future<int>
  Future<int> currentVal([VoidCallback Function(int o)? currentval]) async {
    final val = await AwesomeDBModelSequenceManager()
        .sequence(SequenceIdentitySequence.getInstance, false);
    if (currentval != null) {
      currentval(val);
    }
    return val;
  }

  /// Reset sequence to start value
  /// returns start value
  Future<int> reset([VoidCallback Function(int o)? currentval]) async {
    final val = await AwesomeDBModelSequenceManager()
        .sequence(SequenceIdentitySequence.getInstance, false, reset: true);
    if (currentval != null) {
      currentval(val);
    }
    return val;
  }
}

/// End Region SEQUENCE IdentitySequence

class AwesomeDBModelSequenceManager extends SqfEntityProvider {
  AwesomeDBModelSequenceManager() : super(AwesomeDBModel());
}
// END OF ENTITIES
