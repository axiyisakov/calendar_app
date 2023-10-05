// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_color_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayColorType _$DayColorTypeFromJson(Map<String, dynamic> json) {
  return _DayColorType.fromJson(json);
}

/// @nodoc
mixin _$DayColorType {
  int get type => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayColorTypeCopyWith<DayColorType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayColorTypeCopyWith<$Res> {
  factory $DayColorTypeCopyWith(
          DayColorType value, $Res Function(DayColorType) then) =
      _$DayColorTypeCopyWithImpl<$Res, DayColorType>;
  @useResult
  $Res call({int type, String color});
}

/// @nodoc
class _$DayColorTypeCopyWithImpl<$Res, $Val extends DayColorType>
    implements $DayColorTypeCopyWith<$Res> {
  _$DayColorTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DayColorTypeCopyWith<$Res>
    implements $DayColorTypeCopyWith<$Res> {
  factory _$$_DayColorTypeCopyWith(
          _$_DayColorType value, $Res Function(_$_DayColorType) then) =
      __$$_DayColorTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int type, String color});
}

/// @nodoc
class __$$_DayColorTypeCopyWithImpl<$Res>
    extends _$DayColorTypeCopyWithImpl<$Res, _$_DayColorType>
    implements _$$_DayColorTypeCopyWith<$Res> {
  __$$_DayColorTypeCopyWithImpl(
      _$_DayColorType _value, $Res Function(_$_DayColorType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? color = null,
  }) {
    return _then(_$_DayColorType(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayColorType implements _DayColorType {
  const _$_DayColorType({required this.type, required this.color});

  factory _$_DayColorType.fromJson(Map<String, dynamic> json) =>
      _$$_DayColorTypeFromJson(json);

  @override
  final int type;
  @override
  final String color;

  @override
  String toString() {
    return 'DayColorType(type: $type, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayColorType &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayColorTypeCopyWith<_$_DayColorType> get copyWith =>
      __$$_DayColorTypeCopyWithImpl<_$_DayColorType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayColorTypeToJson(
      this,
    );
  }
}

abstract class _DayColorType implements DayColorType {
  const factory _DayColorType(
      {required final int type, required final String color}) = _$_DayColorType;

  factory _DayColorType.fromJson(Map<String, dynamic> json) =
      _$_DayColorType.fromJson;

  @override
  int get type;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$_DayColorTypeCopyWith<_$_DayColorType> get copyWith =>
      throw _privateConstructorUsedError;
}
