
import 'dart:io';

import 'package:mahasiswa/core/config/app.dart';
import 'package:mahasiswa/core/helpers/constant_helper.dart';
import 'package:mahasiswa/core/helpers/environment.dart';
import 'package:postgres/postgres.dart';

class DatabaseConfig {
  DatabaseConfig();
  PostgreSQLConnection? database;

  Future<PostgreSQLConnection> getConnection() async {
    if (database == null) {
      database = await _setConnection();
      await database!.open();
    }
    return database!;
  }

  Future<PostgreSQLConnection> _setConnection() async {
    final env  = Platform.environment;
    return App.environment == ENVIRONMENT.dev
        ? PostgreSQLConnection(
            ConstantHelper.hostProd,
            ConstantHelper.portProd,
            ConstantHelper.databaseNameProd,
            username: ConstantHelper.userNameProd,
            password: ConstantHelper.passwordProd,
          )
        : PostgreSQLConnection(
            ConstantHelper.hostProd,
            ConstantHelper.portProd,
            ConstantHelper.databaseNameProd,
            username: ConstantHelper.userNameProd,
            password: ConstantHelper.passwordProd,
          );
  }

  
}
