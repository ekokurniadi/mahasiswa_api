import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/extensions/request_method_x.dart';
import 'package:mahasiswa/core/helpers/response_helper.dart';
import 'package:mahasiswa/features/mahasiswa/presentation/responses/mahasiswa.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.HttpMethodGet) {
    return await Mahasiswa.getAllMahasiswa(context);
  } else if (context.HttpMethodPost) {
    return await Mahasiswa.createMahasiswa(context);
  }
  return ResponseHelper.methodNotAllowed();
}
