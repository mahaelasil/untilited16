import 'package:flutter/material.dart';
import 'package:untitled16/widgets/small_text.dart';

import '../utilis/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,size: Dimensions.font26,),
        SmallText(text: "Sugarless"),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(5,(index) {return const Icon(Icons.stars_sharp,color: Colors.red,size: 15,);}
              ),
            ),
            SizedBox(width: Dimensions.width10,),
            SmallText(text: "4.5"),
            SizedBox(width:Dimensions.width10 ,),
            SmallText(text: "1287"),
            SizedBox(width: Dimensions.width10,),
            SmallText(text: "Comments"),
          ],
        ),
        SizedBox(height:Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconAndTextWidget(icon: Icons.circle_sharp,
                text: "Normal",
                color: Colors.cyan,
                iconColor: Colors.indigoAccent),
            IconAndTextWidget(icon: Icons.location_on_rounded,
              text: "1.7km",
              color: Colors.deepPurpleAccent,
              iconColor: Colors.green,),
            IconAndTextWidget(icon: Icons.access_time_rounded,
                text: "32min",
                color: Colors.red,
                iconColor: Colors.deepOrangeAccent),
          ],
        )
      ],
    );
  }
}
