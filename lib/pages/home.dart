import 'package:ai_chat/utils/hex_color.dart';
import 'package:ai_chat/widgets/home_tile.dart';
import 'package:ai_chat/widgets/rounded_icon.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<IconData> navBarItems = [
    Icons.home_rounded,
    Icons.grid_view_rounded,
    Icons.settings_rounded
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor.fromHex("#fbfbfb"),
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
                        child: const RoundedIcon(
                            isActive: true, icon: Icons.person)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello!",
                            style: TextStyle(color: Colors.grey.shade500)),
                        const Text("Volnetiks",
                            style: TextStyle(fontWeight: FontWeight.w500))
                      ],
                    )
                  ],
                ),
                Container(
                    margin: const EdgeInsets.all(15),
                    child: const RoundedIcon(
                        isActive: true, icon: Icons.notifications_rounded)),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: const Text("How's your day? How we can help?",
                  style: TextStyle(fontSize: 45)),
            ),
            const HomeTile(
              title: "Start a conversation with our AI model.",
              description:
                  "Ask anything and our AI will be ready to answer and help you.",
              color: Colors.lightBlue,
              buttonContent: "Start message",
            ),
            const SizedBox(
              height: 15,
            ),
            const HomeTile(
              title: "Talk directly to our ai model with voice note!",
              description:
                  "Voice note brings you a more fluid and human like experience.",
              color: Colors.black,
              buttonContent: "Start voice",
            )
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
            children: List.generate(
                navBarItems.length,
                (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: RoundedIcon(
                          isActive: selectedIndex == index,
                          icon: navBarItems[index]),
                    )),
          ),
        ),
      ),
    );
  }
}
