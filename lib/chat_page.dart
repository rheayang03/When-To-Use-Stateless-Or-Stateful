import 'package:flutter/material.dart';
import 'chat_bubble.dart';
import 'chat_input.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Hi Rhea Mae!'),
        actions: [
          IconButton(
            onPressed: () => debugPrint('Logout icon pressed'),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: const [
                ChatBubble(
                  alignment: Alignment.centerLeft,
                  message: "Hi, this is Rhea Mae!",
                ),
                ChatBubble(
                  alignment: Alignment.centerRight,
                  message: "Hi, this is Rhea Mae!",
                ),
              ],
            ),
          ),
          const InputBar(),
        ],
      ),
    );
  }
}