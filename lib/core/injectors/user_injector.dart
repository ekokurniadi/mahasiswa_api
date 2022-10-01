import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/injectors/injector_behavior.dart';
import 'package:mahasiswa/features/users/data/datasources/users_local_datasource.dart';
import 'package:mahasiswa/features/users/domain/repositories/users_repository.dart';
import 'package:mahasiswa/features/users/domain/usescases/create_user.dart';
import 'package:mahasiswa/features/users/domain/usescases/delete_user.dart';
import 'package:mahasiswa/features/users/domain/usescases/get_all_user.dart';
import 'package:mahasiswa/features/users/domain/usescases/get_by_id_user.dart';
import 'package:mahasiswa/features/users/domain/usescases/login_usecases.dart';
import 'package:mahasiswa/features/users/domain/usescases/update_user.dart';

Handler usersInjector(Handler handler) {
  return handler
      .use(
        provider<UsersLocalDataSource>((_) => usersLocalDataSource),
      )
      .use(provider<UsersRepository>((_) => usersRepository))
      .use(provider<CreateUserUsesCases>((_) => createUserUsesCases))
      .use(provider<UpdateUserUsesCases>((_) => updateUserUsesCases))
      .use(provider<DeleteUserUsesCases>((_) => deleteUserUsesCases))
      .use(provider<GetAllUserUsesCases>((_) => getAllUserUsesCases))
      .use(provider<GetByIdUserUsesCases>((_) => getByIdUserUsesCases))
      .use(provider<LoginUsesCases>((_) => loginUsesCases));
}
