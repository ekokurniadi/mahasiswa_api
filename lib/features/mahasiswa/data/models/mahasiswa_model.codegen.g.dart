// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'mahasiswa_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MahasiswaModel _$$_MahasiswaModelFromJson(Map<String, dynamic> json) =>
    _$_MahasiswaModel(
      id: json['id'] as int,
      nomorIndukMahasiswa: json['nomor_induk_mahasiswa'] as String,
      nama: json['nama'] as String,
      umur: json['umur'] as int,
      tanggalLahir: json['tanggal_lahir'] as String,
      alamat: json['alamat'] as String,
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_MahasiswaModelToJson(_$_MahasiswaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nomor_induk_mahasiswa': instance.nomorIndukMahasiswa,
      'nama': instance.nama,
      'umur': instance.umur,
      'tanggal_lahir': instance.tanggalLahir,
      'alamat': instance.alamat,
      'status': instance.status,
    };
