// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mahasiswa_input_params.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MahasiswaInputParams _$MahasiswaInputParamsFromJson(Map<String, dynamic> json) {
  return _MahasiswaInputParams.fromJson(json);
}

/// @nodoc
mixin _$MahasiswaInputParams {
  String get nomorIndukMahasiswa => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  int get umur => throw _privateConstructorUsedError;
  String get tanggalLahir => throw _privateConstructorUsedError;
  String get alamat => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MahasiswaInputParamsCopyWith<MahasiswaInputParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MahasiswaInputParamsCopyWith<$Res> {
  factory $MahasiswaInputParamsCopyWith(MahasiswaInputParams value,
          $Res Function(MahasiswaInputParams) then) =
      _$MahasiswaInputParamsCopyWithImpl<$Res>;
  $Res call(
      {String nomorIndukMahasiswa,
      String nama,
      int umur,
      String tanggalLahir,
      String alamat,
      int status});
}

/// @nodoc
class _$MahasiswaInputParamsCopyWithImpl<$Res>
    implements $MahasiswaInputParamsCopyWith<$Res> {
  _$MahasiswaInputParamsCopyWithImpl(this._value, this._then);

  final MahasiswaInputParams _value;
  // ignore: unused_field
  final $Res Function(MahasiswaInputParams) _then;

  @override
  $Res call({
    Object? nomorIndukMahasiswa = freezed,
    Object? nama = freezed,
    Object? umur = freezed,
    Object? tanggalLahir = freezed,
    Object? alamat = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      nomorIndukMahasiswa: nomorIndukMahasiswa == freezed
          ? _value.nomorIndukMahasiswa
          : nomorIndukMahasiswa // ignore: cast_nullable_to_non_nullable
              as String,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      umur: umur == freezed
          ? _value.umur
          : umur // ignore: cast_nullable_to_non_nullable
              as int,
      tanggalLahir: tanggalLahir == freezed
          ? _value.tanggalLahir
          : tanggalLahir // ignore: cast_nullable_to_non_nullable
              as String,
      alamat: alamat == freezed
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MahasiswaInputParamsCopyWith<$Res>
    implements $MahasiswaInputParamsCopyWith<$Res> {
  factory _$$_MahasiswaInputParamsCopyWith(_$_MahasiswaInputParams value,
          $Res Function(_$_MahasiswaInputParams) then) =
      __$$_MahasiswaInputParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nomorIndukMahasiswa,
      String nama,
      int umur,
      String tanggalLahir,
      String alamat,
      int status});
}

/// @nodoc
class __$$_MahasiswaInputParamsCopyWithImpl<$Res>
    extends _$MahasiswaInputParamsCopyWithImpl<$Res>
    implements _$$_MahasiswaInputParamsCopyWith<$Res> {
  __$$_MahasiswaInputParamsCopyWithImpl(_$_MahasiswaInputParams _value,
      $Res Function(_$_MahasiswaInputParams) _then)
      : super(_value, (v) => _then(v as _$_MahasiswaInputParams));

  @override
  _$_MahasiswaInputParams get _value => super._value as _$_MahasiswaInputParams;

  @override
  $Res call({
    Object? nomorIndukMahasiswa = freezed,
    Object? nama = freezed,
    Object? umur = freezed,
    Object? tanggalLahir = freezed,
    Object? alamat = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_MahasiswaInputParams(
      nomorIndukMahasiswa: nomorIndukMahasiswa == freezed
          ? _value.nomorIndukMahasiswa
          : nomorIndukMahasiswa // ignore: cast_nullable_to_non_nullable
              as String,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      umur: umur == freezed
          ? _value.umur
          : umur // ignore: cast_nullable_to_non_nullable
              as int,
      tanggalLahir: tanggalLahir == freezed
          ? _value.tanggalLahir
          : tanggalLahir // ignore: cast_nullable_to_non_nullable
              as String,
      alamat: alamat == freezed
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MahasiswaInputParams implements _MahasiswaInputParams {
  _$_MahasiswaInputParams(
      {required this.nomorIndukMahasiswa,
      required this.nama,
      required this.umur,
      required this.tanggalLahir,
      required this.alamat,
      required this.status});

  factory _$_MahasiswaInputParams.fromJson(Map<String, dynamic> json) =>
      _$$_MahasiswaInputParamsFromJson(json);

  @override
  final String nomorIndukMahasiswa;
  @override
  final String nama;
  @override
  final int umur;
  @override
  final String tanggalLahir;
  @override
  final String alamat;
  @override
  final int status;

  @override
  String toString() {
    return 'MahasiswaInputParams(nomorIndukMahasiswa: $nomorIndukMahasiswa, nama: $nama, umur: $umur, tanggalLahir: $tanggalLahir, alamat: $alamat, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MahasiswaInputParams &&
            const DeepCollectionEquality()
                .equals(other.nomorIndukMahasiswa, nomorIndukMahasiswa) &&
            const DeepCollectionEquality().equals(other.nama, nama) &&
            const DeepCollectionEquality().equals(other.umur, umur) &&
            const DeepCollectionEquality()
                .equals(other.tanggalLahir, tanggalLahir) &&
            const DeepCollectionEquality().equals(other.alamat, alamat) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nomorIndukMahasiswa),
      const DeepCollectionEquality().hash(nama),
      const DeepCollectionEquality().hash(umur),
      const DeepCollectionEquality().hash(tanggalLahir),
      const DeepCollectionEquality().hash(alamat),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_MahasiswaInputParamsCopyWith<_$_MahasiswaInputParams> get copyWith =>
      __$$_MahasiswaInputParamsCopyWithImpl<_$_MahasiswaInputParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MahasiswaInputParamsToJson(
      this,
    );
  }
}

abstract class _MahasiswaInputParams implements MahasiswaInputParams {
  factory _MahasiswaInputParams(
      {required final String nomorIndukMahasiswa,
      required final String nama,
      required final int umur,
      required final String tanggalLahir,
      required final String alamat,
      required final int status}) = _$_MahasiswaInputParams;

  factory _MahasiswaInputParams.fromJson(Map<String, dynamic> json) =
      _$_MahasiswaInputParams.fromJson;

  @override
  String get nomorIndukMahasiswa;
  @override
  String get nama;
  @override
  int get umur;
  @override
  String get tanggalLahir;
  @override
  String get alamat;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_MahasiswaInputParamsCopyWith<_$_MahasiswaInputParams> get copyWith =>
      throw _privateConstructorUsedError;
}
