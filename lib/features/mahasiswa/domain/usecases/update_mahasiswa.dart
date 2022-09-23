import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/features/mahasiswa/domain/entities/mahasiswa_entity.codegen.dart';
import 'package:mahasiswa/features/mahasiswa/domain/repositories/mahasiswa_repository.dart';

class UpdateMahasiswaUsesCases {
  UpdateMahasiswaUsesCases({
    required MahasiswaRepository mahasiswaRepository,
  }) : _mahasiswaRepository = mahasiswaRepository;
  final MahasiswaRepository _mahasiswaRepository;

  Future<Either<Failure, MahasiswaEntity>> call(
    MahasiswaEntity mahasiswaEntity,
    int id,
  ) async {
    return await _mahasiswaRepository.updateMahasiswa(mahasiswaEntity, id);
  }
}
