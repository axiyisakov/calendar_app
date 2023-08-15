// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colored_days_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ColoredDaysBase _$ColoredDaysBaseFromJson(Map<String, dynamic> json) {
  return _ColoredDaysBase.fromJson(json);
}

/// @nodoc
mixin _$ColoredDaysBase {
  String get month => throw _privateConstructorUsedError;
  num get year => throw _privateConstructorUsedError;
  List<ColoredDays> get days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColoredDaysBaseCopyWith<ColoredDaysBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColoredDaysBaseCopyWith<$Res> {
  factory $ColoredDaysBaseCopyWith(
          ColoredDaysBase value, $Res Function(ColoredDaysBase) then) =
      _$ColoredDaysBaseCopyWithImpl<$Res, ColoredDaysBase>;
  @useResult
  $Res call({String month, num year, List<ColoredDays> days});
}

/// @nodoc
class _$ColoredDaysBaseCopyWithImpl<$Res, $Val extends ColoredDaysBase>
    implements $ColoredDaysBaseCopyWith<$Res> {
  _$ColoredDaysBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? year = null,
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as num,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<ColoredDays>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ColoredDaysBaseCopyWith<$Res>
    implements $ColoredDaysBaseCopyWith<$Res> {
  factory _$$_ColoredDaysBaseCopyWith(
          _$_ColoredDaysBase value, $Res Function(_$_ColoredDaysBase) then) =
      __$$_ColoredDaysBaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String month, num year, List<ColoredDays> days});
}

/// @nodoc
class __$$_ColoredDaysBaseCopyWithImpl<$Res>
    extends _$ColoredDaysBaseCopyWithImpl<$Res, _$_ColoredDaysBase>
    implements _$$_ColoredDaysBaseCopyWith<$Res> {
  __$$_ColoredDaysBaseCopyWithImpl(
      _$_ColoredDaysBase _value, $Res Function(_$_ColoredDaysBase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? year = null,
    Object? days = null,
  }) {
    return _then(_$_ColoredDaysBase(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as num,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<ColoredDays>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ColoredDaysBase implements _ColoredDaysBase {
  const _$_ColoredDaysBase(
      {required this.month,
      required this.year,
      required final List<ColoredDays> days})
      : _days = days;

  factory _$_ColoredDaysBase.fromJson(Map<String, dynamic> json) =>
      _$$_ColoredDaysBaseFromJson(json);

  @override
  final String month;
  @override
  final num year;
  final List<ColoredDays> _days;
  @override
  List<ColoredDays> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  String toString() {
    return 'ColoredDaysBase(month: $month, year: $year, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColoredDaysBase &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, month, year, const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColoredDaysBaseCopyWith<_$_ColoredDaysBase> get copyWith =>
      __$$_ColoredDaysBaseCopyWithImpl<_$_ColoredDaysBase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColoredDaysBaseToJson(
      this,
    );
  }
}

abstract class _ColoredDaysBase implements ColoredDaysBase {
  const factory _ColoredDaysBase(
      {required final String month,
      required final num year,
      required final List<ColoredDays> days}) = _$_ColoredDaysBase;

  factory _ColoredDaysBase.fromJson(Map<String, dynamic> json) =
      _$_ColoredDaysBase.fromJson;

  @override
  String get month;
  @override
  num get year;
  @override
  List<ColoredDays> get days;
  @override
  @JsonKey(ignore: true)
  _$$_ColoredDaysBaseCopyWith<_$_ColoredDaysBase> get copyWith =>
      throw _privateConstructorUsedError;
}
