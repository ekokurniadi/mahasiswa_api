import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/builder/template_builder.dart';

Future<Response> onRequest(RequestContext context) async {
  final templateBuilder = TemplateBuilder();
  final html = templateBuilder
      .setHeader()
      .setContent(folderName: 'dashboard', fileName: 'index.html')
      .setFooter()
      .buildTemplate();
  return Response(body: html, headers: {'Content-type': 'text/html'});
}
