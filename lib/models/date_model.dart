import 'package:flutter/material.dart';

class Date {
  final String weekDay;
  final String date;
  final String dayName;
  final Color weekDayColor;
  final Color topColor;

  Date(
      {required this.weekDay,
      required this.date,
      required this.dayName,
      required this.weekDayColor,
      required this.topColor});
}