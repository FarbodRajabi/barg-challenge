import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shape01 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.green.shade800
      ..style = PaintingStyle.fill
      ..strokeWidth = 3;
    var path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * .8);
    path.quadraticBezierTo(
      size.width * .5,
      size.height,
      size.width,
      size.height * .8,
    );
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
