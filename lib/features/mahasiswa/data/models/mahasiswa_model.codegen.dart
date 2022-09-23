import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mahasiswa/features/mahasiswa/domain/entities/mahasiswa_entity.codegen.dart';

part 'mahasiswa_model.codegen.freezed.dart';
part 'mahasiswa_model.codegen.g.dart';

@freezed
class MahasiswaModel with _$MahasiswaModel {
  factory MahasiswaModel({
    required int id,
    required String nomorIndukMahasiswa,
    required String nama,
    required int umur,
    required String tanggalLahir,
    required String alamat,
    required int status,
  }) = _MahasiswaModel;

  factory MahasiswaModel.fromJson(Map<String, dynamic> json) =>
      _$MahasiswaModelFromJson(json);

}

extension MahasiswaDataX on MahasiswaModel {
  MahasiswaEntity toMahasiswaEntity() => MahasiswaEntity(
        id: id,
        nomorIndukMahasiswa: nomorIndukMahasiswa,
        nama: nama,
        umur: umur,
        tanggalLahir: tanggalLahir,
        alamat: alamat,
        status: status,
      );
}
