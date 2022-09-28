
import 'package:mahasiswa/core/config/database.dart';
import 'package:mahasiswa/core/config/list_of_tables.dart';
import 'package:mahasiswa/core/config/migrations.dart';
import 'package:mahasiswa/core/helpers/environment.dart';
import 'package:postgres/postgres.dart';


class App {
  const App._();
  static late PostgreSQLConnection database;
  static late ENVIRONMENT environment;

  static Future<void> init() async {
    environment = ENVIRONMENT.dev;
    database = await DatabaseConfig().getConnection();
    await Migrations.doMigrations(tables: listTables);
  }
}
