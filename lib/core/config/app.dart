import 'package:mahasiswa/core/config/database.dart';
import 'package:mahasiswa/core/config/migrations.dart';
import 'package:postgres/postgres.dart';

class App {
  const App._();
  static late PostgreSQLConnection database;

  static Future<void> init() async {
    database = await DatabaseConfig().getConnection();
    await Migrations.migrateMahasiswa();
  }
}
