import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/helpers/constant_helper.dart';

extension ContentTypeX on RequestContext {
  bool get contentTypeJSON =>
      request.headers['content-type'] == ConstantHelper.applicationJson;
}
