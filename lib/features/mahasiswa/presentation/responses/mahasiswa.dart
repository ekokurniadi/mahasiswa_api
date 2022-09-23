import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/extensions/binding.dart';
import 'package:mahasiswa/core/helpers/response_helper.dart';
import 'package:mahasiswa/core/services/jwt.dart';
import 'package:mahasiswa/features/mahasiswa/domain/entities/mahasiswa_input_params.codegen.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/create_mahasiswa.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/delete_mahasiswa.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/get_all_mahasiswa.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/update_mahasiswa.dart';

class Mahasiswa {
  const Mahasiswa._();

  static Future<Response> getAllMahasiswa(RequestContext context) async {
    final middleWare = context.read<JwtService>();
    final getAllMahasiswaUsesCases = context.read<GetAllMahasiswaUsesCases>();

    final users = await getAllMahasiswaUsesCases();
    return users.fold(
      (l) => ResponseHelper.badRequest(message: l.errorMessage),
      (r) => ResponseHelper.json(
        status: HttpStatus.ok,
        message: 'Successfully get All Data Users',
        body: r,
      ),
    );
  }

  static Future<Response> createMahasiswa(RequestContext context) async {
    // final middleWare = context.read<JwtService>();
    final createMahasiswaUseCases = context.read<CreateMahasiswaUsesCases>();
    final params = await context.shouldBindJSON();

    final result = await createMahasiswaUseCases(
      MahasiswaInputParams.fromJson(params).toMahasiswaEntity(),
    );
    return result.fold(
      (l) => ResponseHelper.badRequest(message: l.errorMessage),
      (r) => ResponseHelper.json(
        status: HttpStatus.ok,
        message: 'Successfully create mahasiswa',
        body: r,
      ),
    );
  }

  static Future<Response> updateMahasiswa(
    RequestContext context,
    String id,
  ) async {
    // final middleWare = context.read<JwtService>();
    final updateMahasiswaUseCases = context.read<UpdateMahasiswaUsesCases>();
    final params = await context.shouldBindUri(id);
    final requestBody = await context.shouldBindJSON();

    final result = await updateMahasiswaUseCases(
      MahasiswaInputParams.fromJson(requestBody).toMahasiswaEntity(),
      params,
    );
    return result.fold(
      (l) => ResponseHelper.badRequest(message: l.errorMessage),
      (r) => ResponseHelper.json(
        status: HttpStatus.ok,
        message: 'Successfully update mahasiswa',
        body: r,
      ),
    );
  }

  static Future<Response> deleteMahasiswa(
    RequestContext context,
    String id,
  ) async {
    // final middleWare = context.read<JwtService>();
    final deleteMahasiswaUseCases = context.read<DeleteMahasiswaUsesCases>();
    final params = await context.shouldBindUri(id);

    final result = await deleteMahasiswaUseCases(params);
    return result.fold(
      (l) => ResponseHelper.json(
        status: HttpStatus.ok,
        message: l.errorMessage,
        body: null,
      ),
      (r) => ResponseHelper.json(
        status: HttpStatus.ok,
        message: 'Delete mahasiswa success',
        body: r,
      ),
    );
  }
}
