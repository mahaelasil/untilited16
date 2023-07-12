import 'package:flutter/material.dart';
import 'package:untitled16/core/screen.dart';

class LoginSuccess2Screen extends StatelessWidget {
  const LoginSuccess2Screen({Key? key}) : super(key: key);

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
              "Your profile is ready to use",
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
                  context, home, (route) => false,
                );
              }, child: const Text("Try Order"),

            ),
          ],
        ),
      ),
    );
  }
}
