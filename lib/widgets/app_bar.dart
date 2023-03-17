import 'package:flutter/material.dart';
import 'package:test2/utils/color_constants.dart';

AppBar customAppBar({
  required String title,
}) {
  return AppBar(
    backgroundColor: ColorConstants.white,
    shadowColor: ColorConstants.blue,
    elevation: 10,
    centerTitle: true,
    leading: Builder(builder: (ctx) {
      return IconButton(
          onPressed: () => Scaffold.of(ctx).openDrawer(),
          icon: Icon(
            Icons.menu,
            color: ColorConstants.blue,
          ));
    }),
    title: Text(
      title,
      style: TextStyle(
        color: ColorConstants.blue,
      ),
    ),
  );
}
