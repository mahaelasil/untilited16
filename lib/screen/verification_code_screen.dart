import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:untitled16/core/screen.dart';
class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme =PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent)
      )
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Verification code"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          margin: const EdgeInsets.only(top: 40),
          width: double.infinity,
          child: Column(
            children: [
              const Text(
                "Verification",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 40),
                child: const Text("Code sent to +6282045****",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18
                ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: const Text("this code will expired in 01:30",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),),
              ),
              const SizedBox(height: 20,),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Pinput(
             length: 4,
             defaultPinTheme:defaultPinTheme ,
             focusedPinTheme: defaultPinTheme.copyWith(
               decoration: defaultPinTheme.decoration!.copyWith(
                 border: Border.all(color: Colors.green),
               ),
             ),
             onCompleted: (pin)=>debugPrint(pin),
           ),
         ],
       ),
             const SizedBox(height: 300,),

             SizedBox(
               width: double.maxFinite,
               child:  ElevatedButton(
                   onPressed: (){
                     Navigator.pushNamedAndRemoveUntil(
                         context, forgotPasswordScreen, (route) => false,
                     );
                   }, child: const Text("Next")),
             ),

            ],
            
          )
        ),
      ),
      
    );
  }
}
