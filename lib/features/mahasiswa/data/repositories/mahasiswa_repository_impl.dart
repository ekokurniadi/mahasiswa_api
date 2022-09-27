import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/features/mahasiswa/data/datasources/mahasiswa_local_datasource.dart';
import 'package:mahasiswa/features/mahasiswa/domain/entities/mahasiswa_entity.codegen.dart';
import 'package:mahasiswa/features/mahasiswa/domain/repositories/mahasiswa_repository.dart';

class MahasiswaRepositoryImpl extends MahasiswaRepository {
  MahasiswaRepositoryImpl({
    required MahasiswaLocalDataSource mahasiswaLocalDataSource,
  }) : _mahasiswaLocalDataSource = mahasiswaLocalDataSource;
  final MahasiswaLocalDataSource _mahasiswaLocalDataSource;

  @override
  Future<Either<Failure, List<MahasiswaEntity>>> getMahasiswa() async {
    return await _mahasiswaLocalDataSource.getMahasiswa();
  }

  @override
  Future<Either<Failure, MahasiswaEntity>> createMahasiswa(
    MahasiswaEntity mahasiswaEntity,
  ) async {
    return await _mahasiswaLocalDataSource
        .saveMahasiswa(mahasiswaEntity.toModel());
  }

  @override
  Future<Either<Failure, int>> deleteMahasiswa(int id) async {
    return await _mahasiswaLocalDataSource.deleteMahasiswaByID(id);
  }

  @override
  Future<Either<Failure, MahasiswaEntity>> updateMahasiswa(
    MahasiswaEntity mahasiswaEntity,
    int id,
  ) async {
    return await _mahasiswaLocalDataSource.updateMahasiswa(
      mahasiswaEntity.toModel(),
      id,
    );
  }

  @override
  Future<Either<Failure, MahasiswaEntity>> getMahasiswaById(int id) async {
    return await _mahasiswaLocalDataSource.getMahasiswaByID(id);
  }
}
