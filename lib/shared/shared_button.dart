import 'package:flutter/material.dart';
import 'package:quiz_appl/shared/colors.dart';
import 'package:quiz_appl/shared/shared_text.dart';

Widget buildButton(String text , Function function){
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: MaterialButton(
      height: 40,
      color: redAccent,
      minWidth: double.infinity,
      onPressed: (){
        function();
      },
      child: buildText(text),
    ),
  );
}