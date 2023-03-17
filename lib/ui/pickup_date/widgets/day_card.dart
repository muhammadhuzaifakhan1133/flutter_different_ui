import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  final Color topColor;
  final Color weekDayColor;
  final String weekDay;
  final String date;
  final String dayName;
  const DayCard({
    super.key,
    required this.topColor,
    required this.weekDay,
    required this.date,
    required this.dayName,
    this.weekDayColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: MediaQuery.of(context).size.width / 5,
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    color: topColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  weekDay,
                  style: TextStyle(fontSize: 20, color: weekDayColor),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      date,
                      style: TextStyle(color: Colors.black.withOpacity(0.8)),
                    ),
                    Text(
                      dayName,
                      style: TextStyle(color: Colors.black.withOpacity(0.8)),
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}