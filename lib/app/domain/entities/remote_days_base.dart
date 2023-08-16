import 'package:calendar_app/app/domain/entities/colored_days.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_days_base.freezed.dart';
part 'remote_days_base.g.dart';

@freezed
class RemoteDaysBase with _$RemoteDaysBase {
  const factory RemoteDaysBase({
    required String month,
    required num year,
    required List<ColoredDays> days,
  }) = _RemoteDaysBase;

  factory RemoteDaysBase.fromJson(Map<String, Object?> json) =>
      _$RemoteDaysBaseFromJson(json);
}
