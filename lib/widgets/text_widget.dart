// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:weather_app/constants/color_constants.dart';

class myText extends StatelessWidget {
  String text;
  String fontFamily;
  double size;
  Color color;
  Color? decColor;
  TextAlign? textAlign;
  TextDecoration? decoration;
  FontWeight? fontWeight;
  myText(
      {Key? key,
        this.textAlign,
        this.decoration,
        this.decColor,
        this.fontWeight,
        required this.text,
        required this.fontFamily,
        required this.size,
        required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
        decoration: decoration,
        decorationColor: decColor ?? whiteColor,
      ),
      textAlign: textAlign,
    );
  }
}
