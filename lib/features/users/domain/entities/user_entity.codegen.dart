import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mahasiswa/features/users/data/models/user_model.codegen.dart';

part 'user_entity.codegen.freezed.dart';
part 'user_entity.codegen.g.dart';

@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    required int id,
    required String nama,
    required String userName,
    required String password,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  factory UserEntity.initial() => UserEntity(
        id: 0,
        nama: '',
        userName: '',
        password: '',
      );
}

extension UserEntityX on UserEntity {
  UserModel toUserModel() => UserModel(
        id: id,
        nama: nama,
        userName: userName,
        password: password,
      );
}
