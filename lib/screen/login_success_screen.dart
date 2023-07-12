import 'package:flutter/material.dart';
import 'package:untitled16/core/screen.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/correct.png",
            width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(height: 20,),
            const Text(
              "Congrats",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20,),
            const Text(
              "Password reset successful",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20,),
         ElevatedButton(
            onPressed: (){
              Navigator.pushNamedAndRemoveUntil(
                context, loginScreen, (route) => false,
              );
            }, child: const Text("Back"),

         ),
          ],
        ),
      ),
    );
  }
}
