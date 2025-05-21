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
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ChatBubble(
                  alignment: index % 2 == 0
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  message: 'Hi, I’m Rhea Mae!',
                );
              },
            ),
          ),
          const InputBar(),
        ],
      ),
    );
  }
}
