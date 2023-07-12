import 'package:flutter/material.dart';
import 'package:untitled16/core/utiles/size_vonfg.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
        width:SizeConfig.screenWidth,
      decoration:  BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Text(
          'text',
          style:TextStyle(
            fontSize: 14,
            color: Colors.cyanAccent,
            fontWeight: FontWeight.bold,
          ) ,
        textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
