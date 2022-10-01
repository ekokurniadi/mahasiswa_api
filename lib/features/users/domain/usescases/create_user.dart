import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/features/users/domain/entities/user_entity.codegen.dart';
import 'package:mahasiswa/features/users/domain/repositories/users_repository.dart';

class CreateUserUsesCases {
  CreateUserUsesCases({
    required UsersRepository usersRepository,
  }) : _userRepository = usersRepository;
  final UsersRepository _userRepository;

  Future<Either<Failure, UserEntity>> call(
    UserEntity userEntity,
  ) async {
    return await _userRepository.createUsers(userEntity);
  }
}
