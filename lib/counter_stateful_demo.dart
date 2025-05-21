import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
  final Color buttonColor;

  // Fixed constructor (comma instead of period) and 'final' added
  const CounterStateful({Key? key, required this.buttonColor})
      : super(key: key);

  @override
  State<CounterStateful> createState() => _CounterStatefulState();
}

class _CounterStatefulState extends State<CounterStateful> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: widget.buttonColor,
        child: Icon(Icons.add),
        onPressed: increment,
      ),
      body: Center(
        child: Text(
          '$counter',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
