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
        appBar: AppBar(
          leading:
              const RoundedIcon(isActive: false, icon: Icons.person_4_rounded),
          title: const Text("AI Chat",
              style: TextStyle(color: Colors.black, fontSize: 25)),
          actions: [
            Container(
                color: Colors.grey,
                child: const Padding(
                    padding: EdgeInsets.all(8), child: Text("View history")))
          ],
        ),
        body: SafeArea(child: Container()));
  }
}
