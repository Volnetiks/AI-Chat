import 'package:ai_chat/painters/home_clipper.dart';
import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final String buttonContent;

  const HomeTile(
      {super.key,
      required this.title,
      required this.description,
      required this.color,
      required this.buttonContent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        height: 220,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            FractionallySizedBox(
              widthFactor: 1 / 3 * 0.96,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  width: double.infinity,
                  height: 220 * 1 / 4 * 0.90,
                  child: Center(child: Text(buttonContent))),
            ),
            ClipPath(
              clipper: HomeClipper(),
              child: Container(
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(25)),
                width: double.infinity,
                height: 220,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  height: 1.2)),
                          const SizedBox(height: 10),
                          Text(description,
                              style: const TextStyle(color: Colors.white)),
                        ],
                      ),
                      const Text("Learn more",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
