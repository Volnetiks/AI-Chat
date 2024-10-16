import 'package:flutter/material.dart';

class HomeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(size.width, size.height * 2 / 3 - 25)
      ..quadraticBezierTo(
          size.width, size.height / 1.5, size.width - 25, size.height * 2 / 3)
      ..lineTo(size.width - 75, size.height * 2 / 3)
      ..quadraticBezierTo(size.width / 2, size.height / 1.5, size.width - 100,
          size.height * 2 / 3 + 25)
      ..lineTo(size.width - 100, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
