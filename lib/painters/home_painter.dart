import 'package:ai_chat/utils/hex_color.dart';
import 'package:flutter/material.dart';

class HomePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < 3; i++) {
      final Path path = Path()
        ..moveTo(size.width * 0.5 + 10, size.height * 0.05 + 40 * i)
        ..quadraticBezierTo(
          size.width * 0.8,
          size.height * 0.1 + 40 * i,
          size.width + 10,
          size.height / 4 + 40 * i,
        )
        ..lineTo(size.width, size.height / 4 + 10 + 40 * i)
        ..quadraticBezierTo(size.width * 0.8, size.height * 0.1 + 10 + 40 * i,
            size.width * 0.5, size.height * 0.05 + 10 + 40 * i)
        ..close();

      Offset startPoint =
          Offset(size.width * 0.5 + 10, size.height * 0.05 + 40 * i);
      Offset endPoint = Offset(size.width, size.height / 4 + 10 + 40 * i);

      final Gradient gradient = LinearGradient(
        begin: Alignment(
          startPoint.dx / size.width,
          startPoint.dy / size.height,
        ),
        end: Alignment(
          endPoint.dx / size.width,
          endPoint.dy / size.height,
        ),
        colors: [
          const Color.fromARGB(255, 233, 242, 250).withOpacity(0.3),
          HexColor.fromHex("#fbfbfb")
        ],
      );

      Rect pathBounds = path.getBounds();

      final Paint paint = Paint()
        ..shader = gradient.createShader(pathBounds)
        ..style = PaintingStyle.fill;

      // Draw the path
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
