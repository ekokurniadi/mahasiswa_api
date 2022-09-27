import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/features/users/data/datasources/users_local_datasource.dart';
import 'package:mahasiswa/features/users/domain/entities/user_entity.codegen.dart';
import 'package:mahasiswa/features/users/domain/entities/user_input_params.codegen.dart';
import 'package:mahasiswa/features/users/domain/repositories/users_repository.dart';

class UserRepositoryImpl extends UsersRepository {
  UserRepositoryImpl({required this.usersLocalDataSource});
  final UsersLocalDataSource usersLocalDataSource;
  @override
  Future<Either<Failure, UserEntity>> login(UserInputParams params) async {
    return await usersLocalDataSource.login(params);
  }
}
