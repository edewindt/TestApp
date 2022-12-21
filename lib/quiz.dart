import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
import './nav.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int ii;
  final Function change;
  final Function answer;
  final List<String> chosen;
  const Quiz(
      {required this.questions,
      required this.ii,
      required this.change,
      required this.answer,
      super.key,
      required this.chosen});
  void name(params) {
    {}
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[ii]['question'] as String),
      Column(
        children: [
          for (var i in questions[ii]['answers'] as List<String>)
            Answer(i, change)
        ],
      ),
      Nav(handle: answer),
      if (chosen[ii] != '0')
        Text(
          chosen[ii],
          style: const TextStyle(fontSize: 20),
        )
    ]);
  }
}
