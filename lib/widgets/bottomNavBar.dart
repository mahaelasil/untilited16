import 'package:flutter/material.dart';

import '../core/screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
        padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
          color: Colors.red,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
      topRight: Radius.circular(15),
      ),
      ),
      child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:   const [

          Icon(Icons.home,

          color: Colors.white,
          size: 42,),

          Icon(Icons.favorite,
            color: Colors.white,
          size: 42,),

          Icon(Icons.category,
            color: Colors.green,
          size: 42,),

          Icon(Icons.chat_sharp,
            color: Colors.white,
          size: 42,),
        ],
      ),

    );
  }
}
