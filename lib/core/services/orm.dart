import 'package:mahasiswa/core/config/app.dart';

class ORM {
  final database = App.database;

  Future<List<Map<String, Map<String, dynamic>>>> rawQuery(
    String query, {
    Map<String, dynamic>? param,
  }) async {
    final result =
        await App.database.mappedResultsQuery(query, substitutionValues: param);
    return result;
  }

  Future<int> insert(String query, Map<String, dynamic> param) async {
    final insertedId =
        await App.database.query(query, substitutionValues: param);
    return insertedId.last[0] as int;
  }

  Future<int> delete(String query, Map<String, dynamic> param) async {
    final insertedId =
        await App.database.query(query, substitutionValues: param);
    return insertedId.affectedRowCount;
  }

  Future<List<Map<String, Map<String, dynamic>>>> findByID(
    String tableName, {
    String primaryKey = 'id',
    required int id,
  }) async {
    final result = await App.database.mappedResultsQuery(
      'SELECT * FROM $tableName where $primaryKey=@id',
      substitutionValues: {primaryKey: id},
    );
    return result;
  }

  Future<void> migrate(String query) async {
    await database.query(query);
  }
}
