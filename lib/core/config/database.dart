import 'package:mahasiswa/core/helpers/constant_helper.dart';
import 'package:postgres/postgres.dart';

class DatabaseConfig {
  DatabaseConfig();
  PostgreSQLConnection? database;

  Future<PostgreSQLConnection> getConnection() async {
    if (database == null) {
      database = PostgreSQLConnection(
        ConstantHelper.host,
        ConstantHelper.port,
        ConstantHelper.databaseName,
        username: ConstantHelper.userName,
        password: ConstantHelper.password,
      );
      await database!.open();
    }
    return database!;
  }
}
