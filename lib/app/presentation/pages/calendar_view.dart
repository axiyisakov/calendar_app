import 'package:calendar_app/app/presentation/bloc/calendar/day_type/bloc/calendar_bloc.dart';
import 'package:calendar_app/app/presentation/bloc/calendar/holiday/bloc/holiday_bloc.dart';
import 'package:calendar_app/app/presentation/pages/calendar_page.dart';
import 'package:calendar_app/app/presentation/widgets/loading_widget.dart';
import 'package:calendar_app/app/presentation/widgets/message_widget.dart';
import 'package:calendar_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalendarView extends StatelessWidget {
  final DateTime date;
  const CalendarView({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CalendarBloc>(
          create: (context) =>
              sl<CalendarBloc>()..add(GetDayColorsTypeEvent(date)),
        ),
        BlocProvider<HolidayBloc>(
          create: (context) => sl<HolidayBloc>(),
        ),
      ],
      child: HomePage(
        date: date,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final DateTime date;
  const HomePage({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(date.toString().substring(0, 7)),
      ),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<CalendarBloc, CalendarState>(
            builder: (context, state) => switch (state) {
              Empty() => const MessageWidget("Start searching ..."),
              ErrorState(message: var message) =>
                MessageWidget("ERROR:$message"),
              LoadingState() => const LoadingWidget(),
              LoadedState(type: var type) => CalendarPage(
                  type: type,
                  date: date,
                )
            },
          ),
        ),
      ),
    );
  }
}
