import 'package:calendar_app/app/domain/entities/day_color_type_model.dart';
import 'package:calendar_app/app/domain/repositories/calendar_repository.dart';
import 'package:calendar_app/core/error/failures.dart';
import 'package:calendar_app/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

final class GetDayColors implements UseCase<List<DayColorTypeModel>, NoParams> {
  final CalendarRepository repository;
  GetDayColors(this.repository);

  @override
  Future<Either<Failure, List<DayColorTypeModel>>> call(
          NoParams params) async =>
      await repository.getDayColorTypes();
}

class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object?> get props => [];
}
