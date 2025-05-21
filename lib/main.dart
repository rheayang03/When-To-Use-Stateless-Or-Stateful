import 'package:hello_flutter/counter_stateful_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App!!!",
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: CounterStateful(buttonColor: Colors.blue),
    );
  }
}
