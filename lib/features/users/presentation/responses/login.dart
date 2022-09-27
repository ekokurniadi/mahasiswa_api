import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/extensions/binding.dart';
import 'package:mahasiswa/core/helpers/response_helper.dart';
import 'package:mahasiswa/core/services/jwt.dart';
import 'package:mahasiswa/features/users/domain/entities/user_input_params.codegen.dart';
import 'package:mahasiswa/features/users/domain/usescases/login_usecases.dart';

class LoginUser {
  const LoginUser._();

  static Future<Response> login(RequestContext context) async {
    final jwt = context.read<JwtService>();
    final loginUsesCases = context.read<LoginUsesCases>();
    final params = await context.shouldBindJSON();

    final loggedinUsers = await loginUsesCases(
      UserInputParams.fromJson(params),
    );
    return loggedinUsers.fold(
      (l) => ResponseHelper.badRequest(
        message: l.errorMessage,
      ),
      (r) async {
        final map = r.toJson();
        final _ = map.remove('password');
        final token = await jwt.generateToken({'id': r.id});
        return ResponseHelper.json(
          status: HttpStatus.ok,
          message: 'Login successfully',
          body: map,
          token: token,
        );
      },
    );
  }
}
