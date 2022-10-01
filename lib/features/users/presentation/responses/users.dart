import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/extensions/binding.dart';
import 'package:mahasiswa/core/helpers/response_helper.dart';
import 'package:mahasiswa/core/services/jwt.dart';
import 'package:mahasiswa/features/users/domain/entities/user_entity.codegen.dart';
import 'package:mahasiswa/features/users/domain/usescases/create_user.dart';
import 'package:mahasiswa/features/users/domain/usescases/delete_user.dart';
import 'package:mahasiswa/features/users/domain/usescases/get_all_user.dart';
import 'package:mahasiswa/features/users/domain/usescases/get_by_id_user.dart';
import 'package:mahasiswa/features/users/domain/usescases/update_user.dart';

class Users {
  const Users._();

  static Future<Response> getAllUser(RequestContext context) async {
    final middleWare = context.read<JwtService>();
    final validateToken = await middleWare.verifyToken(context);
    if (!validateToken) {
      return ResponseHelper.unAuthorized();
    } else {
      final getAllUserUsesCases = context.read<GetAllUserUsesCases>();

      final users = await getAllUserUsesCases();
      return users.fold(
        (l) => ResponseHelper.badRequest(message: l.errorMessage),
        (r) => ResponseHelper.json(
          status: HttpStatus.ok,
          message: 'Successfully get All Data Users',
          body: r,
        ),
      );
    }
  }

  static Future<Response> createUser(RequestContext context) async {
    final middleWare = context.read<JwtService>();
    final validateToken = await middleWare.verifyToken(context);
    if (!validateToken) {
      return ResponseHelper.unAuthorized();
    } else {
      final createUserUsesCases = context.read<CreateUserUsesCases>();
      final params = await context.shouldBindJSON();

      final result = await createUserUsesCases(
        UserEntity.fromJson(params),
      );
      return result.fold(
        (l) => ResponseHelper.badRequest(message: l.errorMessage),
        (r) => ResponseHelper.json(
          status: HttpStatus.ok,
          message: 'Successfully create user',
          body: r,
        ),
      );
    }
  }

  static Future<Response> updateUser(
    RequestContext context,
    String id,
  ) async {
    final middleWare = context.read<JwtService>();
    final validateToken = await middleWare.verifyToken(context);
    if (!validateToken) {
      return ResponseHelper.unAuthorized();
    } else {
      final updateUserUseCases = context.read<UpdateUserUsesCases>();
      final params = await context.shouldBindUri(id);
      final requestBody = await context.shouldBindJSON();

      final result = await updateUserUseCases(
        UserEntity.fromJson(requestBody),
        params,
      );
      return result.fold(
        (l) => ResponseHelper.badRequest(message: l.errorMessage),
        (r) => ResponseHelper.json(
          status: HttpStatus.ok,
          message: 'Successfully update user',
          body: r,
        ),
      );
    }
  }

  static Future<Response> deleteUser(
    RequestContext context,
    String id,
  ) async {
    final middleWare = context.read<JwtService>();
    final validateToken = await middleWare.verifyToken(context);
    if (!validateToken) {
      return ResponseHelper.unAuthorized();
    } else {
      final deleteUserUseCases = context.read<DeleteUserUsesCases>();
      final params = await context.shouldBindUri(id);

      final result = await deleteUserUseCases(params);
      return result.fold(
        (l) => ResponseHelper.json(
          status: HttpStatus.ok,
          message: l.errorMessage,
          body: null,
        ),
        (r) => ResponseHelper.json(
          status: HttpStatus.ok,
          message: 'Delete user success',
          body: r,
        ),
      );
    }
  }

  static Future<Response> getUserByID(
    RequestContext context,
    String id,
  ) async {
    final middleWare = context.read<JwtService>();
    final validateToken = await middleWare.verifyToken(context);
    if (!validateToken) {
      return ResponseHelper.unAuthorized();
    } else {
      final getUserById = context.read<GetByIdUserUsesCases>();
      final params = await context.shouldBindUri(id);

      final result = await getUserById(params);
      return result.fold(
        (l) => ResponseHelper.json(
          status: HttpStatus.ok,
          message: l.errorMessage,
          body: null,
        ),
        (r) => ResponseHelper.json(
          status: HttpStatus.ok,
          message: 'Successfully get user success',
          body: r,
        ),
      );
    }
  }
}
