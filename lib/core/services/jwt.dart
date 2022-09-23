import 'package:dart_frog/dart_frog.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

abstract class JwtService {
  Future<String> generateToken(Map<String, dynamic> code);
  Future<bool> verifyToken(RequestContext context);
}

class JwtServiceImpl extends JwtService {
  @override
  Future<String> generateToken(Map<String, dynamic> code) async {
    final jwt = JWT(code);
    final token = jwt.sign(
      SecretKey('mySecret'),
    );
    return token;
  }

  @override
  Future<bool> verifyToken(RequestContext context) async {
    try {
      final headers = context.request.headers;
      final token = await _validateHeadersAndGetToken(headers);
      if (token != null) {
        JWT.verify(token, SecretKey('mySecret'));
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<String?> _validateHeadersAndGetToken(
    Map<String, dynamic> headers,
  ) async {
    String? token;
    if (headers.containsKey('authorization')) {
      final header = headers['authorization'].toString().split(' ');
      if (header[0].contains('Bearer')) {
        token = header[1];
      }
    }
    return token;
  }
}
