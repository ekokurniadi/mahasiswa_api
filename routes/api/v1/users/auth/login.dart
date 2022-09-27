import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/extensions/request_method_x.dart';
import 'package:mahasiswa/core/helpers/response_helper.dart';
import 'package:mahasiswa/features/users/presentation/responses/login.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.HttpMethodPost) {
    return await LoginUser.login(context);
  }
  return ResponseHelper.methodNotAllowed();
}
