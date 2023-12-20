import 'package:flutter/material.dart';

class AllDynamicValue {
  final double tLeft = 30.0;
  final double bLeft = 30.0;
  final double tRight = 30.0;
  final double bRight = 30.0;

  // final Color? appSidebarColorColor.fromRGBO(33, 150, 243, 1)00];
  final Color? appHomeColor = Colors.blue[800];
  final Color? appHomed1 = const Color.fromARGB(80, 19, 78, 146);
  final Color? appHomed2 = const Color.fromARGB(118, 19, 78, 146);
  final Color? appHomeShadow = const Color.fromARGB(54, 0, 0, 0);
  final Color? appSidebarColor = const Color.fromARGB(255, 28, 0, 129);

  getHeight(context) {
    return MediaQuery.of(context).size.height;
  }

  getWidth(context) {
    return MediaQuery.of(context).size.width;
  }
}
