import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_color_type_model.freezed.dart';
part 'day_color_type_model.g.dart';

@freezed
class DayColorTypeModel with _$DayColorTypeModel {
  const factory DayColorTypeModel({
    required int type,
    required String color,
  }) = _DayColorTypeModel;

  factory DayColorTypeModel.fromJson(Map<String, dynamic> json) =>
      _$DayColorTypeModelFromJson(json);
}
