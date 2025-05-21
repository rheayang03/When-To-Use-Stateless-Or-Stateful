flexible and expanded import 'package:flutter/material.dart';

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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 😎,
              children: [
                MessageCard(isSent: false),
                MessageCard(isSent: true),
                MessageCard(isSent: false),
              ],
            ),
          ),
          const InputBar(),
        ],
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  final bool isSent;
  const MessageCard({super.key, required this.isSent});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSent ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 250),
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: isSent ? Colors.grey : Colors.grey,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment:
              isSent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi, this is your message',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 😎,
            Image.network(
              'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}

class InputBar extends StatelessWidget {
  const InputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Row(
        children: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.add, color: Colors.white),
          ),
          Expanded(
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Type a message...',
                hintStyle: TextStyle(color: Colors.white54),
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.send, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
