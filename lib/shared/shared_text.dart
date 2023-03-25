import 'package:flutter/material.dart';
import 'package:quiz_appl/shared/colors.dart';


Widget buildText(String text){
  return Text(
    text,
    style: TextStyle(
        color: whiteFF,
        fontWeight: FontWeight.w400,
        fontSize: 18,
        height: 1.2
    ),
  );
}