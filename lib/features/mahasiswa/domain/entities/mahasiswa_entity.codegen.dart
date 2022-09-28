import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mahasiswa/features/mahasiswa/data/models/mahasiswa_model.codegen.dart';

part 'mahasiswa_entity.codegen.freezed.dart';
part 'mahasiswa_entity.codegen.g.dart';

@freezed
class MahasiswaEntity with _$MahasiswaEntity {
  factory MahasiswaEntity({
    required int id,
    required String nomorIndukMahasiswa,
    required String nama,
    required int umur,
    required String tanggalLahir,
    required String alamat,
    required int status,
  }) = _MahasiswaEntity;

  factory MahasiswaEntity.fromJson(Map<String, dynamic> json) =>
      _$MahasiswaEntityFromJson(json);
      
  factory MahasiswaEntity.initial()=>MahasiswaEntity(
        id: 0,
        nomorIndukMahasiswa: '',
        nama: '',
        umur: 0,
        tanggalLahir: '',
        alamat: '',
        status: 0,
      );
}

extension MahasiswaEntityX on MahasiswaEntity {
  MahasiswaModel toModel() => MahasiswaModel(
        id: id,
        nomorIndukMahasiswa: nomorIndukMahasiswa,
        nama: nama,
        umur: umur,
        tanggalLahir: tanggalLahir,
        alamat: alamat,
        status: status,
      );
}
