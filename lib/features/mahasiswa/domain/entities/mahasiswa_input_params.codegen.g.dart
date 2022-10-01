// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'mahasiswa_input_params.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MahasiswaInputParams _$$_MahasiswaInputParamsFromJson(
        Map<String, dynamic> json) =>
    _$_MahasiswaInputParams(
      nomorIndukMahasiswa: json['nomor_induk_mahasiswa'] as String,
      nama: json['nama'] as String,
      umur: json['umur'] as int,
      tanggalLahir: json['tanggal_lahir'] as String,
      alamat: json['alamat'] as String,
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_MahasiswaInputParamsToJson(
        _$_MahasiswaInputParams instance) =>
    <String, dynamic>{
      'nomor_induk_mahasiswa': instance.nomorIndukMahasiswa,
      'nama': instance.nama,
      'umur': instance.umur,
      'tanggal_lahir': instance.tanggalLahir,
      'alamat': instance.alamat,
      'status': instance.status,
    };
