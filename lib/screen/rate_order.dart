import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled16/core/screen.dart';

class RateOrder extends StatelessWidget {
  const RateOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/Image (5).png",
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
              "Order Completed",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            const Text(
              "please rate your last Divider",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
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
                  context,rateRestaurant , (route) => false,
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
