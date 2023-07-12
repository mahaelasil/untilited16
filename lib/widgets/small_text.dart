// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  SmallText({Key? key,
    required this.text,
    this.size=12,
this.height=1.2,
    this.color=Colors.cyan,})
      : super(key: key);
  Color?color;
  final String text;
  double size;
double height;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w300,

        fontSize: size,
        height: height,
      ),
    );
  }
}