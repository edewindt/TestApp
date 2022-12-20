import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function handle;
  const Answer(this.answer, this.handle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: (() => handle),
        child: Text(answer),
      ),
    );
  }
}
