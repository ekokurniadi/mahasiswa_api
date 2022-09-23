import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/features/mahasiswa/domain/entities/mahasiswa_entity.codegen.dart';
import 'package:mahasiswa/features/mahasiswa/domain/repositories/mahasiswa_repository.dart';

class GetAllMahasiswaUsesCases {
  GetAllMahasiswaUsesCases({
    required MahasiswaRepository mahasiswaRepository,
  }) : _mahasiswaRepository = mahasiswaRepository;
  final MahasiswaRepository _mahasiswaRepository;

  Future<Either<Failure, List<MahasiswaEntity>>> call() async {
    return await _mahasiswaRepository.getMahasiswa();
  }
}
