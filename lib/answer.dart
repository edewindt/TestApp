import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function change;
  final int order;
  const Answer(this.order, this.answer, this.change, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        onPressed: (() {
          change(answer);
        }),
        child: Text('$order. $answer'),
      ),
    );
  }
}
