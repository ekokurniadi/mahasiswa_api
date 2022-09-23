import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/core/services/orm.dart';
import 'package:mahasiswa/features/mahasiswa/data/datasources/mahasiswa_local_datasource.dart';
import 'package:mahasiswa/features/mahasiswa/data/models/mahasiswa_model.codegen.dart';
import 'package:mahasiswa/features/mahasiswa/domain/entities/mahasiswa_entity.codegen.dart';

class MahasiswaLocalDataSourceImpl extends MahasiswaLocalDataSource {
  MahasiswaLocalDataSourceImpl({
    required ORM mahasiswaServiceDB,
  }) : _mahasiswaServiceDB = mahasiswaServiceDB;
  final ORM _mahasiswaServiceDB;

  @override
  Future<Either<Failure, int>> deleteMahasiswaByID(int id) async {
    try {
      final isDeleted = await _mahasiswaServiceDB
          .delete('DELETE FROM mahasiswa WHERE id= @id', {'id': id});
      if (isDeleted == 1) {
        return right(isDeleted);
      } else {
        return left(DatabaseFailure(message: 'Data tidak ditemukan'));
      }
    } catch (e) {
      return left(DatabaseFailure(message: 'Data tidak ditemukan'));
    }
  }

  @override
  Future<Either<Failure, List<MahasiswaEntity>>> getMahasiswa() async {
    try {
      final result = <MahasiswaEntity>[];
      final services =
          await _mahasiswaServiceDB.rawQuery('SELECT * FROM mahasiswa');

      for (final mahasiswa in services) {
        if (mahasiswa['mahasiswa'] != null) {
          result.add(
            MahasiswaModel.fromJson(mahasiswa['mahasiswa']!)
                .toMahasiswaEntity(),
          );
        }
      }

      return right(result);
    } catch (e) {
      return left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, MahasiswaEntity>> getMahasiswaByID(int id) {
    // TODO: implement getMahasiswaByID
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, MahasiswaEntity>> saveMahasiswa(
    MahasiswaModel data,
  ) async {
    try {
      const query = '''
        INSERT INTO mahasiswa (nomor_induk_mahasiswa,nama,umur,tanggal_lahir,alamat,status) 
        VALUES (@nomor_induk_mahasiswa:text,@nama:text,@umur:int4,@tanggal_lahir:text,@alamat:text,@status:int4)
        RETURNING id
      ''';
      final inserted =
          await _mahasiswaServiceDB.query(query, data.toJson()).then(
                (value) async => await _mahasiswaServiceDB.findByID(
                  'mahasiswa',
                  id: value,
                ),
              );

      return right(
        MahasiswaModel.fromJson(
          inserted.first['mahasiswa']!,
        ).toMahasiswaEntity(),
      );
    } catch (e) {
      return left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, MahasiswaEntity>> updateMahasiswa(
    MahasiswaModel data,
    int id,
  ) async {
    try {
      final getMahasiswaById = await _mahasiswaServiceDB.findByID(
        'mahasiswa',
        id: id,
      );
      final mahasiswa =
          MahasiswaModel.fromJson(getMahasiswaById.first['mahasiswa']!)
              .toMahasiswaEntity();
      if (mahasiswa.id != 0) {
        const query = '''
          UPDATE mahasiswa SET 
          nomor_induk_mahasiswa = @nomor_induk_mahasiswa,
          nama = @nama,
          umur = @umur,
          tanggal_lahir =@tanggal_lahir,
          alamat =@alamat,
          status =@status
          WHERE id =@id 
          RETURNING *
      ''';
        final updatedMahasiswa = await _mahasiswaServiceDB.rawQuery(
          query,
          param: data.copyWith(id: id).toJson(),
        );
        final result =
            MahasiswaModel.fromJson(updatedMahasiswa.first['mahasiswa']!);
        return right(result.toMahasiswaEntity());
      } else {
        return left(DatabaseFailure(message: 'User tidak ditemukan'));
      }
    } catch (e) {
      return left(DatabaseFailure(message: e.toString()));
    }
  }
}
