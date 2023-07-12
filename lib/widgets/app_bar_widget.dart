import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Scaffold.of(context).openDrawer();
            },
            child: Container(

              padding:  const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),

                boxShadow:const [ BoxShadow(

                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )]
              ),
              child: const Icon(Icons.bar_chart_sharp),
            ),
          ),
          InkWell(
            onTap: (){},
            child: Container(

              padding:  const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),

                  boxShadow:const [ BoxShadow(

                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )]
              ),
              child: const Icon(Icons.notifications_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
