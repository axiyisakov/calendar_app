import 'package:calendar_app/app/domain/entities/colored_days_base.dart';
import 'package:calendar_app/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class CalendarHolidayRepository {
  Future<Either<Failure, ColoredDaysBase>> getHolidays(String month);
}
