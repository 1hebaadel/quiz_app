import 'package:flutter/material.dart';
import 'package:quiz_appl/answer.dart';
import 'package:quiz_appl/question.dart';
import 'package:quiz_appl/quiz.dart';
import 'package:quiz_appl/result.dart';
import 'package:quiz_appl/shared/colors.dart';
import 'package:quiz_appl/shared/shared_button.dart';
import 'package:quiz_appl/shared/shared_text.dart';

class QuizUI extends StatefulWidget {
  @override
  State<QuizUI> createState() => _QuizUIState();
}

class _QuizUIState extends State<QuizUI> {

  int index = 0;
  int result = 0;
  final List<Map<String, Object>> _questions = [
    {
      'questionText':
          'Which of the following languages is more suited to a structured program?',
      'answerText': [
        {'answer': 'PL/1', 'score': 0},
        {'answer': 'FORTRAN', 'score': 0},
        {'answer': 'BASIC', 'score': 0},
        {'answer': 'PASCAL', 'score': 10},
        {'answer': 'None of above', 'score': 0},
      ]
    },
    {
      'questionText':
          'Another name for computer programs is ____________________. ',
      'answerText': [
        {'answer': 'Software', 'score': 10},
        {'answer': 'RAM', 'score': 0},
        {'answer': 'Input Devices', 'score': 0},
        {'answer': 'Hardware', 'score': 0},
      ]
    },
    {
      'questionText':
          'The physical parts of a computer are termed as ______________. ',
      'answerText': [
        {'answer': 'Hardware', 'score': 10},
        {'answer': 'Hard Drive', 'score': 0},
        {'answer': 'Disk Drive', 'score': 0},
        {'answer': 'Software', 'score': 0},
      ]
    },
    {
      'questionText':
          'Name the computer part that is connected to all other aspects of a computer and allows them to communicate and work together. ',
      'answerText': [
    {'answer':'Operating System','score': 10},
    {'answer':'Disk Drive','score': 0},
    {'answer':'Output Device','score': 0},
    {'answer':'Motherboard','score': 0},
      ]
    },
    {
      'questionText':
          ' Which of the following is suitable for connecting different computers inan organised manner within an office building',
      'answerText': [
    {'answer':'MAN', 'score': 0},
    {'answer':'WAN', 'score': 0},
      {'answer':'ANN', 'score': 0},
        {'answer':'LAN','score': 10},
      ]
    },
    {
      'questionText':
          ' Which one of the following is not considered as a system software?',
      'answerText': [
    {'answer':'Assembler', 'score': 0},
    {'answer':'Interpreter','score': 0},
    {'answer':'Compiler','score': 0},
    {'answer':'Tally','score': 10},
      ]
    },
    {
      'questionText':
          'A computer program that translates one program instruction at a timeinto machine language is called?',
      'answerText': [
    {'answer':'Interpreter','score': 10},
    {'answer':'CPU','score': 0},
    {'answer':'Compiler','score': 0},
    {'answer':'Simulator','score': 0},
      ]
    },
    {
      'questionText':
          'The main purpose of time sharing used in computers is to make the bestuse of the?',
      'answerText': [
    {'answer':'Hard disk','score': 0},
    {'answer':'Peripherals','score': 0},
    {'answer':'CPU','score': 10},
    {'answer':'Flash memory','score': 0},
      ]
    },
    {
      'questionText':
          'The name given to a sequence of instructions in a computer language, toget the desired result is?',
      'answerText': [
    {'answer':'program','score': 10},
    {'answer':'decision table','score': 0},
    {'answer':'pseudo code','score': 0},
    {'answer':'algorithm','score': 0},
      ]
    }
  ];
  bool isSwitched = false;
  void restartQuiz() {
    setState(() {
      result = 0;
      index = 0;
    });
  }

  void pressedOnButton(int score) {
    setState(() {
      result += score;
      index++;
    });
    print(index);
    print("Answer Is Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: gray900,
        elevation: 0,
        centerTitle: true,
        title: Text(
            'Quiz App',
          style: TextStyle(
            color: whiteFF
          ),
        ),
        actions: [
          Switch(
            activeColor: redAccent,
            value: isSwitched,
            onChanged: (value){
              setState(() {
                isSwitched = value;
                if(isSwitched){
                  gray900 = whiteFF;
                  whiteFF = black;
                  redAccent = teal;
                  gray800 = white70;
                }
                else{
                  whiteFF = Colors.white;
                  gray900 = Colors.grey[900];
                  gray800 = Colors.grey[800];
                  redAccent = Colors.redAccent;
                }
              });
            },
          ),
        ],
      ),
      backgroundColor: gray900,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: index < _questions.length ? Quiz(
                  questions: _questions,
                  index: index,
                  answerQuestions: pressedOnButton) : Result(restartQuiz: restartQuiz , totalScore: result),
        ),
      ),
    );
  }
}
