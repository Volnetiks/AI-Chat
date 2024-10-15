import 'package:ai_chat/utils/hex_color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: selectedIndex == 0
                            ? Colors.lightBlue
                            : Colors.transparent,
                      ),
                      child: Icon(
                        Icons.home,
                        color: selectedIndex == 0 ? Colors.white : Colors.black,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello!",
                            style: TextStyle(color: Colors.grey.shade500)),
                        const Text("Volnetiks",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: selectedIndex == 0
                        ? Colors.lightBlue
                        : Colors.transparent,
                  ),
                  child: Icon(
                    Icons.notifications_rounded,
                    color: selectedIndex == 0 ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: const Text("How's your day? How we can help?",
                  style: TextStyle(fontSize: 45)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
          decoration: BoxDecoration(
            color: HexColor.fromHex("e2e3e3").withOpacity(0.4),
            borderRadius: BorderRadius.circular(90),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: selectedIndex == 0
                        ? Colors.lightBlue
                        : Colors.transparent,
                  ),
                  child: Icon(
                    Icons.home,
                    color: selectedIndex == 0 ? Colors.white : Colors.black,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: selectedIndex == 1
                        ? Colors.lightBlue
                        : Colors.transparent,
                  ),
                  child: Icon(
                    Icons.grid_view_rounded,
                    color: selectedIndex == 1 ? Colors.white : Colors.black,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: selectedIndex == 2
                        ? Colors.lightBlue
                        : Colors.transparent,
                  ),
                  child: Icon(
                    Icons.settings_rounded,
                    color: selectedIndex == 2 ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
