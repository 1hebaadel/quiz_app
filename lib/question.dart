import 'package:flutter/material.dart';
import 'package:quiz_appl/shared/shared_text.dart';

class Question extends StatelessWidget {

  final String questionText;
  Question({required this.questionText});

  @override
  Widget build(BuildContext context) {
    return buildText(questionText);
  }
}
