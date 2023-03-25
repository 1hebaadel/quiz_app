import 'package:flutter/material.dart';
import 'package:quiz_appl/shared/shared_button.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function() function;
  Answer({required this.answerText , required this.function});

  @override
  Widget build(BuildContext context) {
    return buildButton(answerText , function);
  }
}
