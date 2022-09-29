import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/injectors/injector_behavior.dart';
import 'package:mahasiswa/core/services/jwt.dart';

Handler jwtInjector(Handler handler){
  return handler.use(provider<JwtService>((_) => jwtService));
}
