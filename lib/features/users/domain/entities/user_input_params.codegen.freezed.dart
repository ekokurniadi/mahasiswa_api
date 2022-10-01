// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_input_params.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInputParams _$UserInputParamsFromJson(Map<String, dynamic> json) {
  return _UserInputParams.fromJson(json);
}

/// @nodoc
mixin _$UserInputParams {
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInputParamsCopyWith<UserInputParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInputParamsCopyWith<$Res> {
  factory $UserInputParamsCopyWith(
          UserInputParams value, $Res Function(UserInputParams) then) =
      _$UserInputParamsCopyWithImpl<$Res>;
  $Res call({String userName, String password});
}

/// @nodoc
class _$UserInputParamsCopyWithImpl<$Res>
    implements $UserInputParamsCopyWith<$Res> {
  _$UserInputParamsCopyWithImpl(this._value, this._then);

  final UserInputParams _value;
  // ignore: unused_field
  final $Res Function(UserInputParams) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserInputParamsCopyWith<$Res>
    implements $UserInputParamsCopyWith<$Res> {
  factory _$$_UserInputParamsCopyWith(
          _$_UserInputParams value, $Res Function(_$_UserInputParams) then) =
      __$$_UserInputParamsCopyWithImpl<$Res>;
  @override
  $Res call({String userName, String password});
}

/// @nodoc
class __$$_UserInputParamsCopyWithImpl<$Res>
    extends _$UserInputParamsCopyWithImpl<$Res>
    implements _$$_UserInputParamsCopyWith<$Res> {
  __$$_UserInputParamsCopyWithImpl(
      _$_UserInputParams _value, $Res Function(_$_UserInputParams) _then)
      : super(_value, (v) => _then(v as _$_UserInputParams));

  @override
  _$_UserInputParams get _value => super._value as _$_UserInputParams;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_UserInputParams(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInputParams implements _UserInputParams {
  _$_UserInputParams({required this.userName, required this.password});

  factory _$_UserInputParams.fromJson(Map<String, dynamic> json) =>
      _$$_UserInputParamsFromJson(json);

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'UserInputParams(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInputParams &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_UserInputParamsCopyWith<_$_UserInputParams> get copyWith =>
      __$$_UserInputParamsCopyWithImpl<_$_UserInputParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInputParamsToJson(
      this,
    );
  }
}

abstract class _UserInputParams implements UserInputParams {
  factory _UserInputParams(
      {required final String userName,
      required final String password}) = _$_UserInputParams;

  factory _UserInputParams.fromJson(Map<String, dynamic> json) =
      _$_UserInputParams.fromJson;

  @override
  String get userName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_UserInputParamsCopyWith<_$_UserInputParams> get copyWith =>
      throw _privateConstructorUsedError;
}
