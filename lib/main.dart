import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './nav.dart';

void main() => runApp(const TestApp());

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
            ? Column(children: [
                Question(questions[_i]['question'] as String),
                Column(
                  children: [
                    for (var i = 0; i < questions[_i]['answers'].length; i++)
                      Answer(i + 1, questions[_i]['answers'][i], change)
                  ],
                ),
                Nav(handle: answer),
                if (chosen[_i] != '0')
                  Text(
                    chosen[_i],
                    style: const TextStyle(fontSize: 20),
                  )
              ])
            : Center(
                child: Text('The End'),
              ),
      ),
    );
  }
}
