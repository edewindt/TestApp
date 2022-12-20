import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  const Answer(this.answer, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(answer),
    );
  }
}
