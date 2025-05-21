import 'package:flutter/material.dart';
import 'package:hello_flutter/chat_page.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const ChatPage(),
    );
  }
}