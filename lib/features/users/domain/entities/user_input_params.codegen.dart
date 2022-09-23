import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_input_params.codegen.freezed.dart';
part 'user_input_params.codegen.g.dart';

@freezed
class UserInputParams with _$UserInputParams {
  factory UserInputParams({
    required String name,
    required String userName,
    required String password,
  }) = _UserInputParams;

  factory UserInputParams.fromJson(Map<String, dynamic> json) =>
      _$UserInputParamsFromJson(json);
}
