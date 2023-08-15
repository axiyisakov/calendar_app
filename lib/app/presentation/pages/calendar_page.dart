import 'package:calendar_app/app/domain/entities/day.dart';
import 'package:calendar_app/app/domain/entities/day_color_type_model.dart';
import 'package:calendar_app/app/presentation/bloc/calendar/holiday/bloc/holiday_bloc.dart';
import 'package:calendar_app/app/presentation/widgets/loading_widget.dart';
import 'package:calendar_app/app/presentation/widgets/message_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalendarPage extends StatefulWidget {
  final List<DayColorTypeModel> type;
  final DateTime date;
  const CalendarPage({super.key, required this.type, required this.date});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  void initState() {
    Future.microtask(
        () => context.read<HolidayBloc>().add(GetHolidaysEvent(widget.date)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('BUILDDDD');
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Select month'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              //? claendar header vidjet
              const _CalendarHeaderWidget(),

              //? calendar body widget
              BlocBuilder<HolidayBloc, HolidayState>(
                builder: (context, state) => switch (state) {
                  Initial() => const MessageWidget("Start searching ..."),
                  Error(message: var message) =>
                    MessageWidget("ERROR:$message"),
                  Loading() => const LoadingWidget(),
                  Loaded(weeks: var weeks) =>
                    Expanded(child: _CalendarBodyWidget(weeks: weeks))
                },
              ),
              // Expanded(
              //   child: _CalendarBodyWidget(
              //     weeks: month.weekList,
              //   ),
              // )
            ],
          ),
        ));
  }
}

class _CalendarHeaderWidget extends StatelessWidget {
  const _CalendarHeaderWidget();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Mon'),
        Text('Tue'),
        Text('Wed'),
        Text('Thu'),
        Text('Fri'),
        Text('Sat'),
        Text('Sun')
      ],
    );
  }
}

class _CalendarBodyWidget extends StatelessWidget {
  final List<List<Day>> weeks;
  const _CalendarBodyWidget({required this.weeks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: weeks.length,
      itemBuilder: (context, index) {
        var week = weeks[index];
        return SizedBox(
          height: MediaQuery.sizeOf(context).width / 7,
          child: _CalendarBodyItemWidget(
            dayList: week,
          ),
        );
      },
    );
  }
}

class _CalendarBodyItemWidget extends StatelessWidget {
  final List<Day> dayList;
  const _CalendarBodyItemWidget({required this.dayList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: dayList.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final date = dayList[index];
          return Container(
            width: MediaQuery.sizeOf(context).width / 7,
            height: MediaQuery.sizeOf(context).width / 7,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(date.day.toString()),
            ),
          );
        });
  }
}
