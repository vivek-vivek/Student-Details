// CustomPainter class to for the header curved-container
import 'package:flutter/material.dart';

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const   Color.fromARGB(255, 25,22,65);
    Path path = Path()
      ..relativeLineTo(0, 300)
      ..quadraticBezierTo(size.width / 1, 250.0, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
