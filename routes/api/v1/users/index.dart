import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/extensions/request_method_x.dart';
import 'package:mahasiswa/core/helpers/response_helper.dart';
import 'package:mahasiswa/features/users/presentation/responses/users.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.HttpMethodGet) {
    return await Users.getAllUser(context);
  } else if (context.HttpMethodPost) {
    return await Users.createUser(context);
  }
  return ResponseHelper.methodNotAllowed();
}
