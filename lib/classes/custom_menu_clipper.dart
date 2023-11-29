import 'package:flutter/material.dart';

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    final width = size.width;
    final height = size.height;

    Paint paint = Paint();
    paint.color = Colors.white;

    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 10, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 10, 0, height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
