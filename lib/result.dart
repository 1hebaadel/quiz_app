import 'package:flutter/material.dart';
import 'package:quiz_appl/shared/colors.dart';
import 'package:quiz_appl/shared/shared_button.dart';
import 'package:quiz_appl/shared/shared_text.dart';

class Result extends StatelessWidget {

  final totalScore;
  final Function() restartQuiz;

  Result({required this.restartQuiz , required this.totalScore});

  String get resultPhrase{
    String resultText;
    if(totalScore >= 70)
      resultText = 'You are awesome';
    else if(totalScore >= 50)
      resultText = 'Pretty likable';
    else
      resultText = 'Bad! Try again';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: gray800,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildText('Done!'),
              buildText('Total Score = $totalScore'),
              buildText(resultPhrase),
              buildButton('Restart' , restartQuiz)
            ],
          ),
        ),
      ),
    );
  }
}
