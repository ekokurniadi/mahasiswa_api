import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/features/users/domain/repositories/users_repository.dart';


class DeleteUserUsesCases {
  DeleteUserUsesCases({
    required UsersRepository usersRepository,
  }) : _userRepository = usersRepository;
  final UsersRepository _userRepository;

  Future<Either<Failure, int>> call(
   int id,
  ) async {
    return await _userRepository.deleteUser(id);
  }
}
