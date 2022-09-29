import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/injectors/injector_behavior.dart';
import 'package:mahasiswa/features/users/data/datasources/users_local_datasource.dart';
import 'package:mahasiswa/features/users/domain/repositories/users_repository.dart';
import 'package:mahasiswa/features/users/domain/usescases/login_usecases.dart';

Handler usersInjector(Handler handler) {
  return handler
      .use(
        provider<UsersLocalDataSource>((_) => usersLocalDataSource),
      )
      .use(provider<UsersRepository>((_) => usersRepository))
      .use(provider<LoginUsesCases>((_) => loginUsesCases));
}
