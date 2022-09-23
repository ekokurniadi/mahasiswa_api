import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mahasiswa/features/users/domain/entities/user_entity.codegen.dart';

part 'user_model.codegen.freezed.dart';
part 'user_model.codegen.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required int id,
    required String name,
    required String userName,
    required String password,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

extension UserModelX on UserModel {
  UserEntity toUserEntity() => UserEntity(
        id: id,
        name: name,
        userName: userName,
        password: password,
      );
}
