import 'package:flutter/material.dart';

class CategoriesItemWidget extends StatelessWidget {
  const CategoriesItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        child: Row(
          children: [
           // for(int i=0;i<10;i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 225,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [InkWell(
                      onTap: () { Navigator.pushNamed(context, "itemPage");
                },
                     child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/Restaurant Image.png",
                          height: 130,
                        ),
                      ),
                    ),
                      const Text(
                        "Healthy Food",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "8Mins",
                        style: TextStyle(
                            fontSize: 15,
                          //  fontWeight: FontWeight.bold
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 225,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/Resturant Image.png",
                          height: 130,
                        ),
                      ),
                      const Text(
                        "Vegan Resto",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "12 Mins",
                        style: TextStyle(
                          fontSize: 15,
                          //  fontWeight: FontWeight.bold
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 225,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/Restaurant Image (1).png",
                          height: 130,
                        ),
                      ),
                      const Text(
                        "Good Food",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "12Mins",
                        style: TextStyle(
                          fontSize: 15,
                          //  fontWeight: FontWeight.bold
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 225,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/Restaurant Image (6).png",
                          height: 130,
                        ),
                      ),
                      const Text(
                        "Smart Resto",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "8Mins",
                        style: TextStyle(
                          fontSize: 15,
                          //  fontWeight: FontWeight.bold
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 225,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/Restaurant Image (4).png",
                          height: 130,
                        ),
                      ),
                      const Text(
                        "Vegan Resto",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 225,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/Restaurant Image (3).png",
                          height: 130,
                        ),
                      ),
                      const Text(
                        "Healthy food",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
