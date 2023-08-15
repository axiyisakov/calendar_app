import 'package:bloc/bloc.dart';
import 'package:calendar_app/app/domain/entities/colored_days_base.dart';
import 'package:calendar_app/app/domain/entities/day.dart';
import 'package:calendar_app/app/domain/usecases/get_holidays.dart';
import 'package:calendar_app/core/util/color_converter.dart';
import 'package:calendar_app/core/util/date_time_to_weekList_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'holiday_bloc.freezed.dart';
part 'holiday_event.dart';
part 'holiday_state.dart';

class HolidayBloc extends Bloc<HolidayEvent, HolidayState> {
  final GetHolidays holidays;
  final ColorConverter colorConverter;
  final DateTimeToWeekListConverter weekListConverter;
  HolidayBloc(
      {required this.colorConverter,
      required this.holidays,
      required this.weekListConverter})
      : super(const Initial()) {
    on<HolidayEvent>(onHolidayEvent);
  }

  void onHolidayEvent(event, emit) async {
    if (event is GetHolidaysEvent) {
      emit(const Loading());
      try {
        //event.date ni paramsga beramiz
        var params = const Params('92TT');
        final dayEnum = await holidays(params);
        HolidayState state =
            dayEnum.fold<HolidayState>((fail) => Error("fail:$fail"), (date) {
          var weekList = _convert(date);
          return HolidayState.loaded(weekList);
        });
        emit(state);
      } catch (e) {
        emit(Error(e.toString()));
      }
    }
  }

  List<List<Day>> _convert(ColoredDaysBase date) {
    DateTime date1 = DateTime(date.year.toInt(), int.parse(date.month));
    var weekList =
        weekListConverter.dateTimeToDay(date1).fold<List<List<Day>>>((fail) {
      return List.empty();
    }, (weekList) => weekList);
    return weekList;
  }
}
