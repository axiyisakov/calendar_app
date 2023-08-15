import 'package:calendar_app/app/domain/entities/colored_days_base.dart';
import 'package:calendar_app/app/domain/entities/day_color_type_model.dart';
import 'package:calendar_app/core/error/exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

abstract interface class CalendarRemoteDataSource {
  Future<List<DayColorTypeModel>> getDayColorTypes();
}

abstract interface class CalendarHolidayRemoteDataSource {
  Future<ColoredDaysBase> getHolidays(String month);
}

class CalendarRemoteDataSourceImpl
    implements CalendarRemoteDataSource, CalendarHolidayRemoteDataSource {
  late final Dio dio;
  final http.Client client;
  CalendarRemoteDataSourceImpl({required this.dio, required this.client});
  Future<List<DayColorTypeModel>> _getDayColorFromUrl(String url) async {
    final responseData = await dio.getUri(
      Uri.parse(url),
    );
    if (responseData.statusCode == 200) {
      var data = responseData.data
          .map((e) {
            debugPrint('$e');
            debugPrint(e.runtimeType.toString());
            return DayColorTypeModel.fromJson(e as Map<String, dynamic>);
          })
          .toList()
          .cast<DayColorTypeModel>();
      return data;
    } else {
      throw ServerException();
    }
  }

  Future<ColoredDaysBase> _getHolidaysFromUrl(String url) async {
    final responseData = await dio.getUri<Map<String, dynamic>>(
      Uri.parse(url),
    );

    if (responseData.statusCode == 200) {
      return ColoredDaysBase.fromJson(responseData.data!);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<DayColorTypeModel>> getDayColorTypes() async =>
      await _getDayColorFromUrl("https://jsonkeeper.com/$version/I86U");

  @override
  Future<ColoredDaysBase> getHolidays(String month) async =>
      await _getHolidaysFromUrl('https://jsonkeeper.com/$version/$month');

  String version = 'b';
}
//!92TT month hozir shu default holda turibdi 
//!https://jsonkeeper.com/b/92TT<---- buni o'rniga nima qo'yishni bilmadim