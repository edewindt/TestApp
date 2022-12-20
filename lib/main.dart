import 'package:flutter/material.dart';

void main() => runApp(TestApp());

class TestApp extends StatelessWidget {
  final List<Map> questions = const [
    {
      'question': 'What is your age range?',
      'answers': ['0 - 13', '13 - 18', '21 - 49', '50+']
    },
    {
      'question': 'What is your income bracket?',
      'answers': [
        '0 - 30,000',
        '30,000 - 70,000',
        '70,000 - 150,000',
        '150,000+'
      ]
    },
    {
      'question': 'Have you ever lied?',
      'answers': ['Yes', 'No']
    },
    {
      'question': 'Are these annoying questions?',
      'answers': ['Yes', 'No']
    }
  ];
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
