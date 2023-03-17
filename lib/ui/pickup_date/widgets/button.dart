import 'package:flutter/material.dart';
import 'package:test2/utils/color_constants.dart';
import 'package:test2/utils/extensions.dart';

class Button extends StatelessWidget {
  final String title;
  const Button({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorConstants.blue,
            elevation: 10,
            shadowColor: Colors.black,
            fixedSize: Size(context.width * 0.85, context.height * 0.05),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Text(title, style: const TextStyle(fontSize: 18)));
  }
}
