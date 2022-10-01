import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/features/users/domain/entities/user_entity.codegen.dart';
import 'package:mahasiswa/features/users/domain/entities/user_input_params.codegen.dart';

abstract class UsersLocalDataSource {
  Future<Either<Failure, UserEntity>> login(UserInputParams params);
  Future<Either<Failure, List<UserEntity>>> getUsers();
  Future<Either<Failure, UserEntity>> createUsers(
    UserEntity userEntity,
  );
  Future<Either<Failure, int>> deleteUser(int id);
  Future<Either<Failure, UserEntity>> updateUser(
    UserEntity userEntity,
    int id,
  );
  Future<Either<Failure, UserEntity>> getUserById(int id);
}
