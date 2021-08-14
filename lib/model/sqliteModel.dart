import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';

part 'sqliteModel.g.dart';

const accountTable = SqfEntityTable(tableName: 'account', fields: [
  SqfEntityField('id', DbType.integer, isPrimaryKeyField: true),
  SqfEntityField('userId', DbType.text),
  SqfEntityField('email', DbType.text),
  SqfEntityField('fullName', DbType.text),
  SqfEntityField('gender', DbType.text),
  SqfEntityField('address', DbType.text),
  SqfEntityField('phone', DbType.text),
  SqfEntityField('birthDate', DbType.text),
]);

const seqIdentity = SqfEntitySequence(
  sequenceName: 'identity',
);

@SqfEntityBuilder(dbModel)
const dbModel = SqfEntityModel(
    modelName: 'AwesomeDBModel',
    databaseName: 'awesome.db',
    databaseTables: [accountTable],
    sequences: [seqIdentity],
    bundledDatabasePath: null);
