import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/extensions/request_method_x.dart';
import 'package:mahasiswa/core/helpers/response_helper.dart';
import 'package:mahasiswa/features/mahasiswa/presentation/responses/mahasiswa.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  if (context.HttpMethodPut) {
    return await Mahasiswa.updateMahasiswa(context, id);
  } else if (context.HttpMethodDelete) {
    return await Mahasiswa.deleteMahasiswa(context, id);
  } else if (context.HttpMethodGet) {
    return await Mahasiswa.getMahasiswaByID(context, id);
  }
  return ResponseHelper.methodNotAllowed();
}
