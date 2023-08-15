import 'package:freezed_annotation/freezed_annotation.dart';

part 'colored_days.freezed.dart';
part 'colored_days.g.dart';

@freezed
class ColoredDays with _$ColoredDays {
  const factory ColoredDays(
      {@JsonKey(name: 'day') required num dayNumber,
      required num type,
      int? color}) = _ColoredDays;

  factory ColoredDays.fromJson(Map<String, Object?> json) =>
      _$ColoredDaysFromJson(json);
}
