import 'package:flutter/material.dart';

class RoundedIconNavigationBar extends StatelessWidget {
  const RoundedIconNavigationBar(
      {super.key, required this.isActive, required this.icon});

  final bool isActive;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: isActive ? Colors.lightBlue : Colors.transparent,
      ),
      child: Icon(
        icon,
        color: isActive ? Colors.white : Colors.black,
      ),
    );
  }
}
