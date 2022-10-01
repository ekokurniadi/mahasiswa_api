import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/features/users/domain/entities/user_entity.codegen.dart';
import 'package:mahasiswa/features/users/domain/repositories/users_repository.dart';

class GetAllUserUsesCases {
  GetAllUserUsesCases({
    required UsersRepository usersRepository,
  }) : _userRepository = usersRepository;
  final UsersRepository _userRepository;

  Future<Either<Failure, List<UserEntity>>> call() async {
    return await _userRepository.getUsers();
  }
}
