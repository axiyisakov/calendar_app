// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_days_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemoteDaysBase _$$_RemoteDaysBaseFromJson(Map<String, dynamic> json) =>
    _$_RemoteDaysBase(
      month: json['month'] as String,
      year: json['year'] as num,
      days: (json['days'] as List<dynamic>)
          .map((e) => RemoteDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RemoteDaysBaseToJson(_$_RemoteDaysBase instance) =>
    <String, dynamic>{
      'month': instance.month,
      'year': instance.year,
      'days': instance.days,
    };
