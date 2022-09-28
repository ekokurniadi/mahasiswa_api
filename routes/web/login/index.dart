import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/builder/template_builder.dart';

Future<Response> onRequest(RequestContext context) async {
  final templateBuilder = TemplateBuilder();
  final html = templateBuilder
      .setContent(folderName: 'login', fileName: 'index.html')
      .buildTemplate();
  return Response(body: html, headers: {'Content-type': 'text/html'});
}
