// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colored_days_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ColoredDaysBase _$$_ColoredDaysBaseFromJson(Map<String, dynamic> json) =>
    _$_ColoredDaysBase(
      month: json['month'] as String,
      year: json['year'] as num,
      days: (json['days'] as List<dynamic>)
          .map((e) => ColoredDays.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ColoredDaysBaseToJson(_$_ColoredDaysBase instance) =>
    <String, dynamic>{
      'month': instance.month,
      'year': instance.year,
      'days': instance.days,
    };
