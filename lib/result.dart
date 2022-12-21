import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String question;
  final String answer;
  const Result(this.question, this.answer, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          question,
          style: TextStyle(fontSize: 20),
        ),
        Text(
          answer,
          style: TextStyle(fontSize: 20, color: Colors.red),
        )
      ],
    );
  }
}
