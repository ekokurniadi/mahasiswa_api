import 'dart:developer';

import 'package:mahasiswa/core/config/database.dart';
import 'package:mahasiswa/core/config/migrations.dart';
import 'package:postgres/postgres.dart';

class App {
  const App._();
  static late PostgreSQLConnection database;

  static Future<void> init() async {
    database = await DatabaseConfig().getConnection();
    final migrations = Migrations(database);
    final migrationTables = await migrations.doMigrate();
    log(
      migrationTables.toString(),
      name: 'migration tables status',
    );
  }
}
