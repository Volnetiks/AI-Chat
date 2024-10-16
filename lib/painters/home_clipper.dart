import 'package:flutter/material.dart';

class HomeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(size.width, size.height * 3 / 4 - 25)
      ..quadraticBezierTo(
          size.width, size.height * 3 / 4, size.width - 25, size.height * 3 / 4)
      ..lineTo(size.width * 2 / 3 + 25, size.height * 3 / 4)
      ..quadraticBezierTo(size.width * 2 / 3, size.height * 3 / 4,
          size.width * 2 / 3, size.height * 3 / 4 + 25)
      ..lineTo(size.width * 2 / 3, size.height - 25)
      ..quadraticBezierTo(
          size.width * 2 / 3, size.height, size.width * 2 / 3 - 25, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
