// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mahasiswa_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MahasiswaModel _$MahasiswaModelFromJson(Map<String, dynamic> json) {
  return _MahasiswaModel.fromJson(json);
}

/// @nodoc
mixin _$MahasiswaModel {
  int get id => throw _privateConstructorUsedError;
  String get nomorIndukMahasiswa => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  int get umur => throw _privateConstructorUsedError;
  String get tanggalLahir => throw _privateConstructorUsedError;
  String get alamat => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MahasiswaModelCopyWith<MahasiswaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MahasiswaModelCopyWith<$Res> {
  factory $MahasiswaModelCopyWith(
          MahasiswaModel value, $Res Function(MahasiswaModel) then) =
      _$MahasiswaModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String nomorIndukMahasiswa,
      String nama,
      int umur,
      String tanggalLahir,
      String alamat,
      int status});
}

/// @nodoc
class _$MahasiswaModelCopyWithImpl<$Res>
    implements $MahasiswaModelCopyWith<$Res> {
  _$MahasiswaModelCopyWithImpl(this._value, this._then);

  final MahasiswaModel _value;
  // ignore: unused_field
  final $Res Function(MahasiswaModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nomorIndukMahasiswa = freezed,
    Object? nama = freezed,
    Object? umur = freezed,
    Object? tanggalLahir = freezed,
    Object? alamat = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_MahasiswaModelCopyWith<$Res>
    implements $MahasiswaModelCopyWith<$Res> {
  factory _$$_MahasiswaModelCopyWith(
          _$_MahasiswaModel value, $Res Function(_$_MahasiswaModel) then) =
      __$$_MahasiswaModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String nomorIndukMahasiswa,
      String nama,
      int umur,
      String tanggalLahir,
      String alamat,
      int status});
}

/// @nodoc
class __$$_MahasiswaModelCopyWithImpl<$Res>
    extends _$MahasiswaModelCopyWithImpl<$Res>
    implements _$$_MahasiswaModelCopyWith<$Res> {
  __$$_MahasiswaModelCopyWithImpl(
      _$_MahasiswaModel _value, $Res Function(_$_MahasiswaModel) _then)
      : super(_value, (v) => _then(v as _$_MahasiswaModel));

  @override
  _$_MahasiswaModel get _value => super._value as _$_MahasiswaModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? nomorIndukMahasiswa = freezed,
    Object? nama = freezed,
    Object? umur = freezed,
    Object? tanggalLahir = freezed,
    Object? alamat = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_MahasiswaModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_MahasiswaModel implements _MahasiswaModel {
  _$_MahasiswaModel(
      {required this.id,
      required this.nomorIndukMahasiswa,
      required this.nama,
      required this.umur,
      required this.tanggalLahir,
      required this.alamat,
      required this.status});

  factory _$_MahasiswaModel.fromJson(Map<String, dynamic> json) =>
      _$$_MahasiswaModelFromJson(json);

  @override
  final int id;
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
    return 'MahasiswaModel(id: $id, nomorIndukMahasiswa: $nomorIndukMahasiswa, nama: $nama, umur: $umur, tanggalLahir: $tanggalLahir, alamat: $alamat, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MahasiswaModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
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
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nomorIndukMahasiswa),
      const DeepCollectionEquality().hash(nama),
      const DeepCollectionEquality().hash(umur),
      const DeepCollectionEquality().hash(tanggalLahir),
      const DeepCollectionEquality().hash(alamat),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_MahasiswaModelCopyWith<_$_MahasiswaModel> get copyWith =>
      __$$_MahasiswaModelCopyWithImpl<_$_MahasiswaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MahasiswaModelToJson(
      this,
    );
  }
}

abstract class _MahasiswaModel implements MahasiswaModel {
  factory _MahasiswaModel(
      {required final int id,
      required final String nomorIndukMahasiswa,
      required final String nama,
      required final int umur,
      required final String tanggalLahir,
      required final String alamat,
      required final int status}) = _$_MahasiswaModel;

  factory _MahasiswaModel.fromJson(Map<String, dynamic> json) =
      _$_MahasiswaModel.fromJson;

  @override
  int get id;
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
  _$$_MahasiswaModelCopyWith<_$_MahasiswaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
