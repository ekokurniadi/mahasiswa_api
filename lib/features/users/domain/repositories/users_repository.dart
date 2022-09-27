import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/features/users/domain/entities/user_entity.codegen.dart';
import 'package:mahasiswa/features/users/domain/entities/user_input_params.codegen.dart';

abstract class UsersRepository {
  Future<Either<Failure, UserEntity>> login(UserInputParams params);
}
