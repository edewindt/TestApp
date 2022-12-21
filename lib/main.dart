import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(const TestApp());

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => TestAppState();
}

class TestAppState extends State<TestApp> {
  final List<Map<String, Object>> questions = const [
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
  void answer(int n) {
    if (n == 1) {
      setState(() {
        _i = _i + n;
      });
    } else if (n == -1 && _i > 0) {
      setState(() {
        _i = _i + n;
      });
    }
  }

  void change(String n) {
    setState(() {
      chosen[_i] = n;
    });
  }

  List<String> chosen = ['0', '0', '0', '0'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text('Test App'),
        ),
        body: _i < questions.length
            ? Quiz(
                questions: questions,
                ii: _i,
                change: change,
                answer: answer,
                chosen: chosen)
            : const Center(
                child: Text('The End'),
              ),
      ),
    );
  }
}
