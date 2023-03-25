import 'package:flutter/material.dart';
import 'package:quiz_appl/answer.dart';
import 'package:quiz_appl/question.dart';
import 'package:quiz_appl/shared/colors.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int index;
  final Function(int score) answerQuestions;

  Quiz({required this.questions , required this.index , required this.answerQuestions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Card(
            elevation: 2,
            shadowColor: Colors.white,
            color: gray800,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 20, horizontal: 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Question(questionText: questions[index]['questionText'].toString()),
                  ),
                  ...(questions[index]['answerText'] as List<Map<String , Object>>).map((answer){
                    return Answer(answerText: answer['answer'].toString() , function:()=> answerQuestions(int.parse(answer['score'].toString())));
                  }).toList(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
