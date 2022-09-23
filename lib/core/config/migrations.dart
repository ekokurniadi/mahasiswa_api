import 'package:mahasiswa/core/services/orm.dart';

class Migrations {
  const Migrations._();

  static Future<void> migrateMahasiswa() async {
    final mahasiswaServiceDB = ORM();
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
    await mahasiswaServiceDB.migrate(query);
  }
}
