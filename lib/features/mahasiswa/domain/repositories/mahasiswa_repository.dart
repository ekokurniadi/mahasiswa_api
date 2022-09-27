import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/features/mahasiswa/domain/entities/mahasiswa_entity.codegen.dart';

abstract class MahasiswaRepository {
  Future<Either<Failure, List<MahasiswaEntity>>> getMahasiswa();
  Future<Either<Failure, MahasiswaEntity>> createMahasiswa(
    MahasiswaEntity mahasiswaEntity,
  );
  Future<Either<Failure, int>> deleteMahasiswa(int id);
  Future<Either<Failure, MahasiswaEntity>> updateMahasiswa(
    MahasiswaEntity mahasiswaEntity,
    int id,
  );
  Future<Either<Failure, MahasiswaEntity>> getMahasiswaById(int id);
}
