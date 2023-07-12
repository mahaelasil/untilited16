import 'package:flutter/material.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 15),
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ]
              ),

              child: Image.asset("assets/Promo Advertising.png",
              ),
            ),
          )
        ],
      ),),
    );
  }
}
