import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mahasiswa/features/mahasiswa/domain/entities/mahasiswa_entity.codegen.dart';

part 'mahasiswa_input_params.codegen.freezed.dart';
part 'mahasiswa_input_params.codegen.g.dart';

@freezed
class MahasiswaInputParams with _$MahasiswaInputParams {
  factory MahasiswaInputParams({
    required String nomorIndukMahasiswa,
    required String nama,
    required int umur,
    required String tanggalLahir,
    required String alamat,
    required int status,
  }) = _MahasiswaInputParams;

  factory MahasiswaInputParams.fromJson(Map<String, dynamic> json) =>
      _$MahasiswaInputParamsFromJson(json);
}

extension MahasiswaInputParamsX on MahasiswaInputParams {
  MahasiswaEntity toMahasiswaEntity() => MahasiswaEntity(
        id: 0,
        nomorIndukMahasiswa: nomorIndukMahasiswa,
        nama: nama,
        umur: umur,
        tanggalLahir: tanggalLahir,
        alamat: alamat,
        status: status,
      );
}
