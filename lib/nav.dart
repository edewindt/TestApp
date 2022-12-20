import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  final Function handle;
  const Nav({required this.handle, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(onPressed: (() => handle(-1)), child: Text('Back')),
        TextButton(onPressed: (() => handle(1)), child: Text('Next'))
      ],
    );
  }
}
