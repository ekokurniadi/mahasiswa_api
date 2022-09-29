import 'dart:developer';

import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/config/app.dart';
import 'package:mahasiswa/core/helpers/environment.dart';

Handler logger(Handler handler){
  return handler.use(
        requestLogger(
          logger: (message, isError) =>
              App.environment == ENVIRONMENT.dev ? log(message) : '',
        ),
      );
}
