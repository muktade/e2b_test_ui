import 'package:flutter/material.dart';

class AllDynamicValue {
  final double tLeft = 30.0;
  final double bLeft = 30.0;
  final double tRight = 30.0;
  final double bRight = 30.0;

  getHeight(context) {
    return MediaQuery.of(context).size.height;
  }

  getWidth(context) {
    return MediaQuery.of(context).size.width;
  }
}
