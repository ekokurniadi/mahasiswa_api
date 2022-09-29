import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/injectors/injector_export.dart';

Handler middleware(Handler handler) {
  return handler
      .use(logger)
      .use(jwtInjector)
      .use(usersInjector)
      .use(mahasiswaInjector);
}
