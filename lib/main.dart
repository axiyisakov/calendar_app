import 'package:calendar_app/app/presentation/listener/date_time_value_notifier.dart';
import 'package:calendar_app/app/presentation/pages/calendar_view.dart';
import 'package:calendar_app/core/util/app_setup.dart';
import 'package:calendar_app/injection_container.dart';
import 'package:flutter/material.dart';

/*
Created by Axmadjon Isaqov on 21:12:17 14.08.2023
&© 2023 @axiydev 
*/
void main() async {
  await AppSetup.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ValueListenableBuilder<DateTime>(
          valueListenable: sl<DateTimeValueNotifier>(),
          builder: (context, dateTime, _) {
            return CalendarView(
              date: dateTime,
            );
          }),
    );
  }
}
