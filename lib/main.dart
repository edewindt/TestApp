import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(TestApp());

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => TestAppState();
}

class TestAppState extends State<TestApp> {
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
  int _i = 0;
  void answer() {
    if (_i < questions.length - 1) {
      setState(() {
        _i++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('Test App'),
        ),
        body: Column(children: [
          Question(questions[_i]['question'] as String),
          Column(
            children: [
              for (var i = 0; i < questions[_i]['answers'].length; i++)
                Answer(i + 1, questions[_i]['answers'][i], answer)
            ],
          )
        ]),
      ),
    );
  }
}
