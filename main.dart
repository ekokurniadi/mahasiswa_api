import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/config/app.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  await App.init();
  return serve(handler, ip, port);
}
