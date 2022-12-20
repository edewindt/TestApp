import 'package:flutter/material.dart';

void main() => runApp(TestApp());

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test App'),
        ),
        body: Column(children: [
          Text('The questions'),
          ElevatedButton(onPressed: (() {}), child: Text('Answer'))
        ]),
      ),
    );
  }
}
