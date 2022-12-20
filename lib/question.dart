import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question(this.question, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(question),
    ));
  }
}
