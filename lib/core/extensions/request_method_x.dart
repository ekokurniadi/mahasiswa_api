import 'package:dart_frog/dart_frog.dart';

extension RequestMethodX on RequestContext {
  bool get HttpMethodGet => request.method == HttpMethod.get;
  bool get HttpMethodPost => request.method == HttpMethod.post;
  bool get HttpMethodPut => request.method == HttpMethod.put;
  bool get HttpMethodDelete => request.method == HttpMethod.delete;
  bool get HttpMethodOptions => request.method == HttpMethod.options;
}
