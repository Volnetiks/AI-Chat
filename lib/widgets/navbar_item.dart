import 'package:flutter/material.dart';

class NavbarItem extends StatefulWidget {
  final Icon icon;
  final bool isActive;

  const NavbarItem({super.key, required this.icon, required this.isActive});

  @override
  State<NavbarItem> createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 4,
          margin: EdgeInsets.only(bottom: 2),
          width: widget.isActive ? 20 : 0,
          decoration: BoxDecoration(color: Color(0x00000)),
        ),
        widget.icon
      ],
    );
  }
}
