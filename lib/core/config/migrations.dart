import 'dart:developer';

import 'package:postgres/postgres.dart';

class Migrations {
  Migrations(this.database);
  final PostgreSQLConnection database;

  Future<bool> migrateMahasiswa() async {
    try {
      const query = '''
      CREATE TABLE IF NOT EXISTS mahasiswa (
        id BIGSERIAL PRIMARY KEY,
        nomor_induk_mahasiswa TEXT NOT NULL,
        nama TEXT NOT NULL,
        umur INTEGER NOT NULL,
        tanggal_lahir TEXT NOT NULL,
        alamat TEXT NOT NULL,
        status integer NOT NULL DEFAULT '0'
      )
    ''';
      await database.query(query);
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> migrateUser() async {
    try {
      const query = '''
      CREATE TABLE IF NOT EXISTS users (
        id BIGSERIAL PRIMARY KEY,
        nama TEXT NOT NULL,
        user_name TEXT NOT NULL,
        password TEXT NOT NULL
      )
    ''';
      await database.query(query);
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<Map<String, dynamic>> doMigrate() async {
    final map = {
      'mahasiswa': await migrateMahasiswa(),
      'users': await migrateUser(),
    };

    return map;
  }
}
