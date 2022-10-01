// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'user_entity.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      id: json['id'] as int,
      nama: json['nama'] as String,
      userName: json['user_name'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'user_name': instance.userName,
      'password': instance.password,
    };
