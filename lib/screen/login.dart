import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled16/core/screen.dart';
import 'package:untitled16/widgets/defult_text.dart';
import 'package:untitled16/widgets/defult_text_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10,),
        Image.asset("assets/correct.png",),
        const SizedBox(height: 10,),
        const Text("Congrats",style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.green),
        ),
        const SizedBox(height: 10,),
        const Text("Password reset successful",style: TextStyle(fontSize: 15,
            fontWeight: FontWeight.normal,
            color: Colors.black),
        ),
        const Spacer(),
        SizedBox(
          width: 20,
          child: DefaultTextButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(
                  context,loginScreen, (route) => false,
                );},
   child: const DefaultText(text:"Back to login screen",
    textColor: Colors.white,
    weight: FontWeight.bold,


          )
        ),
        ),],
    );
  }
}
