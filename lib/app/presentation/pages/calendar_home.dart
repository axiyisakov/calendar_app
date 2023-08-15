import 'package:calendar_app/app/presentation/bloc/calendar/day_type/bloc/calendar_bloc.dart';
import 'package:calendar_app/app/presentation/pages/calendar_page.dart';
import 'package:calendar_app/app/presentation/widgets/loading_widget.dart';
import 'package:calendar_app/app/presentation/widgets/message_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CalendarHomePage extends StatelessWidget {
  final DateTime dateTime;
  const CalendarHomePage({super.key, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DateFormat.yMMMM().format(dateTime)),
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
                  dateTime: dateTime,
                )
            },
          ),
        ),
      ),
    );
  }
}
