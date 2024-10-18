import 'package:ai_chat/widgets/rounded_icon.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Container(
            color: Colors.white,
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBar(
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  title: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RoundedIcon(
                          color: Colors.blue,
                          icon: Icons.person_2_outlined,
                          iconColor: Colors.white),
                      SizedBox(
                        width: 15,
                      ),
                      Text("AI Chat",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  actions: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 8.0, top: 8, bottom: 8),
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey.shade200),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text("View History"),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: Container(
                // TODO: IMPLEMENT MESSAGES
                // -> ONE LOOP FOR EACH DAY + ONE LOOP FOR EACH DAY'S MESSAGES
                )));
  }
}
