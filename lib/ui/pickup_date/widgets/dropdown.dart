import 'package:flutter/material.dart';
import 'package:test2/utils/extensions.dart';

class DropDown extends StatelessWidget {
  final List items;
  Object value;
  void Function(Object?)? onChanged;
  DropDown(
      {super.key,
      required this.onChanged,
      required this.items,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.85,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.withOpacity(0.15),
      ),
      child: DropdownButton(
        value: value,
        items: items
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ))
            .toList(),
        onChanged: onChanged,
        underline: Container(),
        isExpanded: true,
      ),
    );
  }
}