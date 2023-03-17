import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test2/models/date_model.dart';
import 'package:test2/models/slot_model.dart';

class PickupDateViewModel extends BaseViewModel {
  List<Date> dates = [
    Date(
        weekDay: "Fri",
        date: "25 Jun",
        dayName: "Yesterday",
        weekDayColor: Colors.white,
        topColor: Colors.grey),
    Date(
        weekDay: "Sat",
        date: "26 Jun",
        dayName: "Today",
        weekDayColor: Colors.white,
        topColor: Colors.blue),
    Date(
        weekDay: "Sun",
        date: "27 Jun",
        dayName: "Yesterday",
        weekDayColor: Colors.black,
        topColor: Colors.white),
    Date(
        weekDay: "Mon",
        date: "28 Jun",
        dayName: "BlackDay",
        weekDayColor: Colors.white,
        topColor: Colors.red),
  ];
  List<Slot> slots = [
    Slot(
      from: "7am",
      to: "9pm",
    ),
    Slot(
      from: "10am",
      to: "12pm",
    ),
    Slot(from: "1pm", to: "2pm", isAvailable: false),
    Slot(
      from: "4pm",
      to: "6pm",
    ),
    Slot(
      from: "8am",
      to: "10pm",
    ),
  ];
  String repeatValue = "Every Week";
  List<String> repeatOptions = ["Every Week", "Every month"];
  String noOfTimesValue = "1";
  List<String> noOfTimesOptions = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];
  bool isRepeat = true;
}
