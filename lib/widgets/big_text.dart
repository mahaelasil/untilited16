// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:untitled16/utilis/dimensions.dart';

class BigText extends StatelessWidget {
   BigText({Key? key,
     required this.text,
      this.size=0,
      this.overflow=TextOverflow.ellipsis,
     this.color=Colors.cyan,})
       : super(key: key);
    Color?color;
final String text;
double size;
TextOverflow overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w300,

        fontSize:size==0? Dimensions.font20:size,
      ),
    );
  }
}
