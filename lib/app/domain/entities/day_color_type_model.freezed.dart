// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_color_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayColorTypeModel _$DayColorTypeModelFromJson(Map<String, dynamic> json) {
  return _DayColorTypeModel.fromJson(json);
}

/// @nodoc
mixin _$DayColorTypeModel {
  int get type => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayColorTypeModelCopyWith<DayColorTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayColorTypeModelCopyWith<$Res> {
  factory $DayColorTypeModelCopyWith(
          DayColorTypeModel value, $Res Function(DayColorTypeModel) then) =
      _$DayColorTypeModelCopyWithImpl<$Res, DayColorTypeModel>;
  @useResult
  $Res call({int type, String color});
}

/// @nodoc
class _$DayColorTypeModelCopyWithImpl<$Res, $Val extends DayColorTypeModel>
    implements $DayColorTypeModelCopyWith<$Res> {
  _$DayColorTypeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_DayColorTypeModelCopyWith<$Res>
    implements $DayColorTypeModelCopyWith<$Res> {
  factory _$$_DayColorTypeModelCopyWith(_$_DayColorTypeModel value,
          $Res Function(_$_DayColorTypeModel) then) =
      __$$_DayColorTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int type, String color});
}

/// @nodoc
class __$$_DayColorTypeModelCopyWithImpl<$Res>
    extends _$DayColorTypeModelCopyWithImpl<$Res, _$_DayColorTypeModel>
    implements _$$_DayColorTypeModelCopyWith<$Res> {
  __$$_DayColorTypeModelCopyWithImpl(
      _$_DayColorTypeModel _value, $Res Function(_$_DayColorTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? color = null,
  }) {
    return _then(_$_DayColorTypeModel(
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
class _$_DayColorTypeModel implements _DayColorTypeModel {
  const _$_DayColorTypeModel({required this.type, required this.color});

  factory _$_DayColorTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_DayColorTypeModelFromJson(json);

  @override
  final int type;
  @override
  final String color;

  @override
  String toString() {
    return 'DayColorTypeModel(type: $type, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayColorTypeModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayColorTypeModelCopyWith<_$_DayColorTypeModel> get copyWith =>
      __$$_DayColorTypeModelCopyWithImpl<_$_DayColorTypeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayColorTypeModelToJson(
      this,
    );
  }
}

abstract class _DayColorTypeModel implements DayColorTypeModel {
  const factory _DayColorTypeModel(
      {required final int type,
      required final String color}) = _$_DayColorTypeModel;

  factory _DayColorTypeModel.fromJson(Map<String, dynamic> json) =
      _$_DayColorTypeModel.fromJson;

  @override
  int get type;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$_DayColorTypeModelCopyWith<_$_DayColorTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
