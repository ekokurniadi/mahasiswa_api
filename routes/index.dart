import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/helpers/response_helper.dart';

Future<Response> onRequest(RequestContext context) async {
  return ResponseHelper.json(
    status: HttpStatus.ok,
    body: 'Hello :D',
    message: 'Run successfully',
  );
}
