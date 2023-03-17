import 'package:flutter/material.dart';
import 'package:test2/ui/chat/chat_view.dart';
import 'package:test2/ui/pickup_date/pickup_date_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: PickupDateView());
  }
}
