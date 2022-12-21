import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String question;
  final String answer;
  const Result(this.question, this.answer, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(question), Text(answer)],
    );
  }
}
