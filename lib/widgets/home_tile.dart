import 'package:ai_chat/clippers/home_clipper.dart';
import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  const HomeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HomeClipper(),
      child: Container(
        color: Colors.blue,
        width: 200,
        height: 200,
      ),
    );
  }
}
