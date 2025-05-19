import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Hi Rhea Mae!'), // updated name
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Logout icon pressed');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                MessageCard(),
                MessageCard(),
                MessageCard(),
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
  const MessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[800], // Not a const value
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            'Hi, this is your message',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          SizedBox(height: 12),
          Image(
            image: NetworkImage(
              'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
            ),
            height: 200,
          ),
        ],
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.add, color: Colors.white),
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
