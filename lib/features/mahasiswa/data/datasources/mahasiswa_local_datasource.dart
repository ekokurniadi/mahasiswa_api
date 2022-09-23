import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/features/mahasiswa/data/models/mahasiswa_model.codegen.dart';
import 'package:mahasiswa/features/mahasiswa/domain/entities/mahasiswa_entity.codegen.dart';

abstract class MahasiswaLocalDataSource {
  Future<Either<Failure, List<MahasiswaEntity>>> getMahasiswa();
  Future<Either<Failure, MahasiswaEntity>> getMahasiswaByID(int id);
  Future<Either<Failure, MahasiswaEntity>> saveMahasiswa(MahasiswaModel data);
  Future<Either<Failure, MahasiswaEntity>> updateMahasiswa(
    MahasiswaModel data,
    int id,
  );
  Future<Either<Failure, int>> deleteMahasiswaByID(int id);
}
