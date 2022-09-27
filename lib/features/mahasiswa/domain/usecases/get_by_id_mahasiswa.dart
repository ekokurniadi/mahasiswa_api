import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/features/mahasiswa/domain/entities/mahasiswa_entity.codegen.dart';
import 'package:mahasiswa/features/mahasiswa/domain/repositories/mahasiswa_repository.dart';

class GetByIdMahasiswaUsesCases {
  GetByIdMahasiswaUsesCases({
    required MahasiswaRepository mahasiswaRepository,
  }) : _mahasiswaRepository = mahasiswaRepository;
  final MahasiswaRepository _mahasiswaRepository;

  Future<Either<Failure, MahasiswaEntity>> call(
    int id,
  ) async {
    return await _mahasiswaRepository.getMahasiswaById(id);
  }
}
