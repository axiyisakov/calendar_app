import 'package:calendar_app/app/domain/entities/colored_days.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'colored_days_base.freezed.dart';
part 'colored_days_base.g.dart';

@freezed
class ColoredDaysBase with _$ColoredDaysBase {
  const factory ColoredDaysBase({
    required String month,
    required num year,
    required List<ColoredDays> days,
  }) = _ColoredDaysBase;

  factory ColoredDaysBase.fromJson(Map<String, Object?> json) =>
      _$ColoredDaysBaseFromJson(json);
}
