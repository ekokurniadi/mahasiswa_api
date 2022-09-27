import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/features/users/domain/entities/user_entity.codegen.dart';
import 'package:mahasiswa/features/users/domain/entities/user_input_params.codegen.dart';
import 'package:mahasiswa/features/users/domain/repositories/users_repository.dart';

class LoginUsesCases {
  LoginUsesCases({required this.usersRepository});
  final UsersRepository usersRepository;

  Future<Either<Failure, UserEntity>> call(UserInputParams params) async {
    return await usersRepository.login(params);
  }
}
