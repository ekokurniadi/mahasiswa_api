import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/extensions/request_method_x.dart';
import 'package:mahasiswa/core/helpers/response_helper.dart';
import 'package:mahasiswa/features/users/presentation/responses/users.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  if (context.HttpMethodPut) {
    return await Users.updateUser(context, id);
  } else if (context.HttpMethodDelete) {
    return await  Users.deleteUser(context, id);
  } else if (context.HttpMethodGet) {
    return await Users.getUserByID(context, id);
  }
  return ResponseHelper.methodNotAllowed();
}
