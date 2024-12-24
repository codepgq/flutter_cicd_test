import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // text and button
    return Column(
      children: [
        Text('$_counter', key: const Key('counter')),
        ElevatedButton(
          onPressed: _incrementCounter,
          key: const Key('increment'),
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
