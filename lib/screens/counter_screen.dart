import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Counter Screen',
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(60.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Counter $_count',
                  key: Key('counterText'),
                ),
                ElevatedButton(
                  key: Key('incrementButton'),
                  onPressed: () {
                    setState(() {
                      _count++;
                    });
                  },
                  child: Text('PLUS'),
                ),
              ],
            ),
          ),
        ));
  }
}
