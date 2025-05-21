import 'package:flutter/material.dart';

class NewWidget extends StatefulWidget {
  const NewWidget({Key? key}) : super(key: key); // fixed constructor

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Hello, Widget!',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
