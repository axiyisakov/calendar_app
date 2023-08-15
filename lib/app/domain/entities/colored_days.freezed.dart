// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colored_days.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ColoredDays _$ColoredDaysFromJson(Map<String, dynamic> json) {
  return _ColoredDays.fromJson(json);
}

/// @nodoc
mixin _$ColoredDays {
  @JsonKey(name: 'day')
  num get dayNumber => throw _privateConstructorUsedError;
  num get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColoredDaysCopyWith<ColoredDays> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColoredDaysCopyWith<$Res> {
  factory $ColoredDaysCopyWith(
          ColoredDays value, $Res Function(ColoredDays) then) =
      _$ColoredDaysCopyWithImpl<$Res, ColoredDays>;
  @useResult
  $Res call({@JsonKey(name: 'day') num dayNumber, num type});
}

/// @nodoc
class _$ColoredDaysCopyWithImpl<$Res, $Val extends ColoredDays>
    implements $ColoredDaysCopyWith<$Res> {
  _$ColoredDaysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayNumber = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      dayNumber: null == dayNumber
          ? _value.dayNumber
          : dayNumber // ignore: cast_nullable_to_non_nullable
              as num,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ColoredDaysCopyWith<$Res>
    implements $ColoredDaysCopyWith<$Res> {
  factory _$$_ColoredDaysCopyWith(
          _$_ColoredDays value, $Res Function(_$_ColoredDays) then) =
      __$$_ColoredDaysCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'day') num dayNumber, num type});
}

/// @nodoc
class __$$_ColoredDaysCopyWithImpl<$Res>
    extends _$ColoredDaysCopyWithImpl<$Res, _$_ColoredDays>
    implements _$$_ColoredDaysCopyWith<$Res> {
  __$$_ColoredDaysCopyWithImpl(
      _$_ColoredDays _value, $Res Function(_$_ColoredDays) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayNumber = null,
    Object? type = null,
  }) {
    return _then(_$_ColoredDays(
      dayNumber: null == dayNumber
          ? _value.dayNumber
          : dayNumber // ignore: cast_nullable_to_non_nullable
              as num,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ColoredDays implements _ColoredDays {
  const _$_ColoredDays(
      {@JsonKey(name: 'day') required this.dayNumber, required this.type});

  factory _$_ColoredDays.fromJson(Map<String, dynamic> json) =>
      _$$_ColoredDaysFromJson(json);

  @override
  @JsonKey(name: 'day')
  final num dayNumber;
  @override
  final num type;

  @override
  String toString() {
    return 'ColoredDays(dayNumber: $dayNumber, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColoredDays &&
            (identical(other.dayNumber, dayNumber) ||
                other.dayNumber == dayNumber) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dayNumber, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColoredDaysCopyWith<_$_ColoredDays> get copyWith =>
      __$$_ColoredDaysCopyWithImpl<_$_ColoredDays>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColoredDaysToJson(
      this,
    );
  }
}

abstract class _ColoredDays implements ColoredDays {
  const factory _ColoredDays(
      {@JsonKey(name: 'day') required final num dayNumber,
      required final num type}) = _$_ColoredDays;

  factory _ColoredDays.fromJson(Map<String, dynamic> json) =
      _$_ColoredDays.fromJson;

  @override
  @JsonKey(name: 'day')
  num get dayNumber;
  @override
  num get type;
  @override
  @JsonKey(ignore: true)
  _$$_ColoredDaysCopyWith<_$_ColoredDays> get copyWith =>
      throw _privateConstructorUsedError;
}
