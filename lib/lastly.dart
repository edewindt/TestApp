import 'package:flutter/material.dart';

class Lastly extends StatelessWidget {
  final List<String> results;
  const Lastly(this.results, {super.key});

  String get age {
    if (results[0] == '50+') {
      return 'old';
    } else if (results[0] == '21 - 49') {
      return 'mature';
    } else if (results[0] == '13 - 18') {
      return 'young';
    } else {
      return 'way too young';
    }
  }

  String get income {
    if (results[1] == '150,000+') {
      return 'rich';
    } else if (results[1] == '70,000 - 150,000') {
      return 'high income';
    } else if (results[1] == '30,000 - 70,000') {
      return 'mid class';
    } else {
      return 'poor';
    }
  }

  String get innocence {
    if (results[2] == 'Yes') {
      return 'innocent';
    } else {
      return 'a liar';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'You are $age, $income, and $innocence',
      style: const TextStyle(fontSize: 20, color: Colors.purple),
    );
  }
}
