// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_days_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoteDaysBase _$RemoteDaysBaseFromJson(Map<String, dynamic> json) {
  return _RemoteDaysBase.fromJson(json);
}

/// @nodoc
mixin _$RemoteDaysBase {
  String get month => throw _privateConstructorUsedError;
  num get year => throw _privateConstructorUsedError;
  List<RemoteDay> get days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteDaysBaseCopyWith<RemoteDaysBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteDaysBaseCopyWith<$Res> {
  factory $RemoteDaysBaseCopyWith(
          RemoteDaysBase value, $Res Function(RemoteDaysBase) then) =
      _$RemoteDaysBaseCopyWithImpl<$Res, RemoteDaysBase>;
  @useResult
  $Res call({String month, num year, List<RemoteDay> days});
}

/// @nodoc
class _$RemoteDaysBaseCopyWithImpl<$Res, $Val extends RemoteDaysBase>
    implements $RemoteDaysBaseCopyWith<$Res> {
  _$RemoteDaysBaseCopyWithImpl(this._value, this._then);

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
              as List<RemoteDay>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteDaysBaseCopyWith<$Res>
    implements $RemoteDaysBaseCopyWith<$Res> {
  factory _$$_RemoteDaysBaseCopyWith(
          _$_RemoteDaysBase value, $Res Function(_$_RemoteDaysBase) then) =
      __$$_RemoteDaysBaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String month, num year, List<RemoteDay> days});
}

/// @nodoc
class __$$_RemoteDaysBaseCopyWithImpl<$Res>
    extends _$RemoteDaysBaseCopyWithImpl<$Res, _$_RemoteDaysBase>
    implements _$$_RemoteDaysBaseCopyWith<$Res> {
  __$$_RemoteDaysBaseCopyWithImpl(
      _$_RemoteDaysBase _value, $Res Function(_$_RemoteDaysBase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? year = null,
    Object? days = null,
  }) {
    return _then(_$_RemoteDaysBase(
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
              as List<RemoteDay>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemoteDaysBase implements _RemoteDaysBase {
  const _$_RemoteDaysBase(
      {required this.month,
      required this.year,
      required final List<RemoteDay> days})
      : _days = days;

  factory _$_RemoteDaysBase.fromJson(Map<String, dynamic> json) =>
      _$$_RemoteDaysBaseFromJson(json);

  @override
  final String month;
  @override
  final num year;
  final List<RemoteDay> _days;
  @override
  List<RemoteDay> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  String toString() {
    return 'RemoteDaysBase(month: $month, year: $year, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteDaysBase &&
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
  _$$_RemoteDaysBaseCopyWith<_$_RemoteDaysBase> get copyWith =>
      __$$_RemoteDaysBaseCopyWithImpl<_$_RemoteDaysBase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoteDaysBaseToJson(
      this,
    );
  }
}

abstract class _RemoteDaysBase implements RemoteDaysBase {
  const factory _RemoteDaysBase(
      {required final String month,
      required final num year,
      required final List<RemoteDay> days}) = _$_RemoteDaysBase;

  factory _RemoteDaysBase.fromJson(Map<String, dynamic> json) =
      _$_RemoteDaysBase.fromJson;

  @override
  String get month;
  @override
  num get year;
  @override
  List<RemoteDay> get days;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteDaysBaseCopyWith<_$_RemoteDaysBase> get copyWith =>
      throw _privateConstructorUsedError;
}
