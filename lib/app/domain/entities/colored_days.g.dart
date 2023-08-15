// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colored_days.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ColoredDays _$$_ColoredDaysFromJson(Map<String, dynamic> json) =>
    _$_ColoredDays(
      dayNumber: json['day'] as num,
      type: json['type'] as num,
      color: json['color'] as int?,
    );

Map<String, dynamic> _$$_ColoredDaysToJson(_$_ColoredDays instance) =>
    <String, dynamic>{
      'day': instance.dayNumber,
      'type': instance.type,
      'color': instance.color,
    };
