import 'package:flutter/material.dart';

class WaterClipPathBack extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 45.0);
    path.quadraticBezierTo(size.width*0.95, 70.0, size.width*0.5, 25.0);
    path.quadraticBezierTo(size.width*0.3, 5.0, 0.0, 40.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class WaterClipPathFront extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 45.0);
    path.quadraticBezierTo(size.width*0.95, 80.0, size.width*0.5, 26.0);
    path.quadraticBezierTo(size.width*0.3, 5.0, 0.0, 10.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}