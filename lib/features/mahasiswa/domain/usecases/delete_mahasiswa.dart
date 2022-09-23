import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/features/mahasiswa/domain/repositories/mahasiswa_repository.dart';

class DeleteMahasiswaUsesCases {
  DeleteMahasiswaUsesCases({
    required MahasiswaRepository mahasiswaRepository,
  }) : _mahasiswaRepository = mahasiswaRepository;
  final MahasiswaRepository _mahasiswaRepository;

  Future<Either<Failure, int>> call(
    int id,
  ) async {
    return await _mahasiswaRepository.deleteMahasiswa(id);
  }
}
