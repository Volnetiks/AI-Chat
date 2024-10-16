import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  const RoundedIcon(
      {super.key,
      required this.color,
      required this.icon,
      required this.iconColor});

  final Color? color;
  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: color,
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
