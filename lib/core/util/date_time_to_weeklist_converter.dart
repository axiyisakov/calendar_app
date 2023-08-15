import 'package:calendar_app/app/domain/entities/colored_days.dart';
import 'package:calendar_app/app/domain/entities/colored_days_base.dart';
import 'package:calendar_app/app/domain/entities/day.dart';
import 'package:calendar_app/app/domain/entities/day_color_type_model.dart';
import 'package:calendar_app/core/error/failures.dart';
import 'package:calendar_app/core/util/consts.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class DateTimeToWeekListConverter {
  Either<Failure, List<List<Day>>> dateTimeToDay(
      {required DateTime dateTime,
      required ColoredDaysBase coloredDaysBase,
      required List<DayColorTypeModel> colorEnumList}) {
    try {
      var list = weeks(month: dateTime.month, year: dateTime.year);
      var filteredWeeks = _filterWeeks(
          weekList: list,
          coloredDaysBase: coloredDaysBase,
          colorEnumList: colorEnumList);

      if (list.isNotEmpty) {
        return Right(filteredWeeks);
      }
      return Left(DateTimeToWeekListFailure());
    } on FormatException {
      return Left(DateTimeToWeekListFailure());
    }
  }

  List<List<Day>> _filterWeeks(
      {required List<List<Day>> weekList,
      required ColoredDaysBase coloredDaysBase,
      required List<DayColorTypeModel> colorEnumList}) {
    var filteredWeeks = weekList;
    var filteredDays = List<ColoredDays>.empty(growable: true);
    var filteredColoredDays = coloredDaysBase.days;
    var newFilteredWeeks = List<List<Day>>.empty(growable: true);
    if (filteredColoredDays.isNotEmpty) {
      for (var day in coloredDaysBase.days) {
        var color = AppConstants.backgroundColor;
        for (var colorsEnum in colorEnumList) {
          if (colorsEnum.type == day.type) {
            color = colorsEnum.color.toColor();
          }
        }
        filteredDays.add(day.copyWith(color: color));
      }
      debugPrint('FILTERED:$filteredDays');
    }

    for (var week in filteredWeeks) {
      var filteredWeek = List<Day>.empty(growable: true);
      for (var day in week) {
        var color = AppConstants.backgroundColor;
        for (var filtered in filteredDays) {
          if (filtered.dayNumber.toInt() == day.day) {
            color = filtered.color!;
          }
        }
        filteredWeek.add(day.copyWith(color: color));
      }
      newFilteredWeeks.add(filteredWeek);
    }
    debugPrint(newFilteredWeeks.toString());
    if (newFilteredWeeks.isNotEmpty) {
      return newFilteredWeeks;
    }
    return filteredWeeks;
  }

  int _lastDate({int? month}) {
    switch (month ?? month) {
      case 1:
        return 31;
      case 2:
        return 28;
      case 3:
        return 31;
      case 4:
        return 30;
      case 5:
        return 31;
      case 6:
        return 30;
      case 7:
        return 31;
      case 8:
        return 31;
      case 9:
        return 30;
      case 10:
        return 31;
      case 11:
        return 30;
      case 12:
        return 31;
      default:
        return 31;
    }
  }

  List<Day> _days({required int month, required int year}) {
    List<Day> days0 = [];
    final int firstDay = DateTime.utc(year, month, 1).weekday;
    if (firstDay != 7) {
      for (int i = 1; i < firstDay; i++) {
        var day = Day(day: 0, month: month, year: year, weekday: i);
        days0.insert(0, day);
      }
    }
    final int tmLastDate = _lastDate(month: month);
    final int tmLastDay = DateTime.utc(year, month, tmLastDate).weekday;
    for (int i = 1; i < tmLastDate + 1; i++) {
      var day = Day(day: i, month: month, year: year, weekday: i);
      days0.add(day);
    }

    if (tmLastDay != 7) {
      for (int i = 1; i <= 7 - tmLastDay; i++) {
        var day = Day(day: 0, month: month, year: year, weekday: i);
        days0.add(day);
      }
    }
    return days0;
  }

  List<List<Day>> weeks({required int month, required int year}) {
    List<Day> days = _days(month: month, year: year);
    List<List<Day>> weeks = [];
    for (int i = 0; i < days.length / 7; i++) {
      weeks.add(List.generate(7, (int index) => days[7 * i + index]));
    }
    return weeks;
  }
}

class DateTimeToWeekListFailure extends Failure {
  @override
  List<Object?> get props => [];
}
