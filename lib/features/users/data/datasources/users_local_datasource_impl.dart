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
}
