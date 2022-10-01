import 'package:dartz/dartz.dart';
import 'package:mahasiswa/core/error/failure.dart';
import 'package:mahasiswa/core/services/orm.dart';
import 'package:mahasiswa/features/users/data/datasources/users_local_datasource.dart';
import 'package:mahasiswa/features/users/data/models/user_model.codegen.dart';
import 'package:mahasiswa/features/users/domain/entities/user_entity.codegen.dart';
import 'package:mahasiswa/features/users/domain/entities/user_input_params.codegen.dart';

class UsersLocalDataSourceImpl extends UsersLocalDataSource {
  UsersLocalDataSourceImpl({required this.usersServiceDB});
  final ORM usersServiceDB;
  @override
  Future<Either<Failure, UserEntity>> login(UserInputParams params) async {
    try {
      const query = '''
        SELECT * FROM users 
        WHERE user_name=@user_name AND password = @password 
      ''';
      final users = await usersServiceDB.rawQuery(
        query,
        param: params.toJson(),
      );
      final result = UserModel.fromJson(users.first['users']!);
      return right(result.toUserEntity());
    } catch (e) {
      return left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> createUsers(UserEntity userEntity)async{
   try {
      const query = '''
        INSERT INTO users (nama,user_name,password) 
        VALUES (@nama:text,@user_name:text,@password:text)
        RETURNING id
      ''';
      final inserted =
          await usersServiceDB.insert(query, userEntity.toJson()).then(
                (value) async => await usersServiceDB.findByID(
                  'users',
                  id: value,
                ),
              );

      return right(
        UserModel.fromJson(
          inserted.first['users']!,
        ).toUserEntity(),
      );
    } catch (e) {
      return left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, int>> deleteUser(int id) async {
    try {
      final isDeleted = await usersServiceDB
          .delete('DELETE FROM users WHERE id= @id', {'id': id});
      if (isDeleted == 1) {
        return right(isDeleted);
      } else {
        return left(DatabaseFailure(message: 'Data tidak ditemukan'));
      }
    } catch (e) {
      return left(DatabaseFailure(message: 'Data tidak ditemukan'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getUserById(int id)async{
   try {
      final user = await usersServiceDB.findByID('users', id: id);
      return right(
        UserModel.fromJson(
          user.first['users']!,
        ).toUserEntity(),
      );
    } catch (e) {
      return left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<UserEntity>>> getUsers() async {
    try {
      final result = <UserEntity>[];
      final services = await usersServiceDB.rawQuery('SELECT * FROM users');

      for (final user in services) {
        if (user['users'] != null) {
          result.add(
            UserModel.fromJson(user['users']!).toUserEntity(),
          );
        }
      }

      return right(result);
    } catch (e) {
      return left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> updateUser(
    UserEntity userEntity,
    int id,
  ) async {
    try {
      final getUserById = await usersServiceDB.findByID(
        'users',
        id: id,
      );
      final users =
          UserModel.fromJson(getUserById.first['users']!).toUserEntity();
      if (users.id != 0) {
        const query = '''
          UPDATE users SET 
          nama = @nama,
          user_name = @user_name,
          password =@password
          WHERE id =@id 
          RETURNING *
      ''';
        final updatedUser = await usersServiceDB.rawQuery(
          query,
          param: userEntity.copyWith(id: id).toJson(),
        );
        final result = UserModel.fromJson(updatedUser.first['users']!);
        return right(result.toUserEntity());
      } else {
        return left(DatabaseFailure(message: 'User tidak ditemukan'));
      }
    } catch (e) {
      return left(DatabaseFailure(message: e.toString()));
    }
  }
}
