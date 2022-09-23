import 'package:dart_frog/dart_frog.dart';

extension BindingX on RequestContext {
  Future<int> shouldBindUri(String id) async {
    return int.parse(id);
  }

  Future<String?> bindQuery(
    String param,
  ) async {
    final query = request.uri.queryParameters[param];
    return query;
  }

  Future<Map<String, dynamic>> shouldBindJSON() async {
    final requestBody = await request.json();
    return requestBody;
  }
}
