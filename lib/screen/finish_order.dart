import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../core/screen.dart';

class FinishOrder extends StatelessWidget {
  const FinishOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return Scaffold(
       backgroundColor: Colors.white,
       body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/Image (6).png",
              width: MediaQuery.of(context).size.width,
            ),
             const SizedBox(height: 20,),
           const Text(
             "Thank you!",
             style: TextStyle(
                   color: Colors.black,
                 fontSize: 28,
                 fontWeight: FontWeight.bold
             ),
            ),
            const SizedBox(height: 20,),
            const Text(
              "Enjoy your Meal",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
             RatingBar.builder(
              initialRating: 4,
              minRating: 1,  direction: Axis.horizontal,
              itemCount: 5,
             itemSize: 10,
             itemPadding:
             const EdgeInsets.symmetric(horizontal: 4),
             itemBuilder: (context, _) => const Icon(
               Icons.star,
               color: Colors.red,
              ),
                onRatingUpdate: (index) {},
              ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(
                  context,rateOrder , (route) => false,
                );
              }, child: const Text("Submit"),

           ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(
                  context,home , (route) => false,
                );
              }, child: const Text("Scip"),

            ),
         ],
        ),     ),
    );   }
 }