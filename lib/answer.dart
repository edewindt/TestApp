import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function handle;
  final int order;
  const Answer(this.order, this.answer, this.handle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        onPressed: (() => handle()),
        child: Text('$order. $answer'),
      ),
    );
  }
}
