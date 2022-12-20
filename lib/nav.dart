import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  final Function handle;
  const Nav({required this.handle, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: TextButton(
            onPressed: (() => handle(-1)),
            style: TextButton.styleFrom(backgroundColor: Colors.black),
            child: const Text('Back', style: TextStyle(color: Colors.white)),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: TextButton(
            onPressed: (() => handle(1)),
            style: TextButton.styleFrom(backgroundColor: Colors.black),
            child: const Text(
              'Next',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
