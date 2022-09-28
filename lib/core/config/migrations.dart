import 'dart:developer';

import 'package:mahasiswa/core/config/app.dart';
import 'package:mahasiswa/core/helpers/environment.dart';

class Migrations {
  const Migrations._();
 

  static Future<bool> doMigrations({
    required List<Map<String, dynamic>> tables,
  }) async {
    try {
      for (final table in tables) {
        final tableName = table['tableName'];
        final fields = table['fields'] as Map<String, dynamic>;

        var query = 'CREATE TABLE IF NOT EXISTS $tableName(';
        fields.forEach((key, value) {
          final separator = key == fields.entries.last.key ? '' : ',';
          final notPrimaryField =
              '$key ${value.runtimeType == String ? 'TEXT NOT NULL' : 
              value.runtimeType == int ? "INTEGER NOT NULL DEFAULT '0'" : 
              value.runtimeType == DateTime ? '' : 'TEXT NOT NULL'}$separator';

          query += key == 'id'
              ? '$key BIGSERIAL PRIMARY KEY,'
              : notPrimaryField;
        });
        query += ')';
        if (App.environment == ENVIRONMENT.dev) {
          log('<== STARTING CREATE TABLE $tableName ==>');
          log(query);
          log('\n');
        }
        await App.database.query(query);
      }
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }
}
