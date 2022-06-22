import 'package:flutter/material.dart';

class ShapeClipperUP extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 20);
    path.quadraticBezierTo(4 * size.width / 4, 0, size.width * 0.6, 40);
    path.quadraticBezierTo(size.width * 0.4, 60, size.width * 0.3, 40);
    path.quadraticBezierTo(size.width / 6, 20, 0, 20);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}

class DesktopClipperTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 10);
    path.quadraticBezierTo(75, size.height, 150, size.height);
    path.quadraticBezierTo(
        size.width * 0.6, size.height - 20, size.width, size.height - 20);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
