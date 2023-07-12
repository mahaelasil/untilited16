import 'package:flutter/material.dart';

class PopularMenuWidget extends StatelessWidget {
  const PopularMenuWidget({Key? key}) : super(key: key);

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
                          "assets/image 32.png",
                          height: 130,
                        ),
                      ),
                    ),
                      const Text(
                        "Spacy Fresh crab",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "\$16",
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
                          "assets/image 34.png",
                          height: 130,
                        ),
                      ),
                      const Text(
                        "Spacy Fresh Crab",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "\$12",
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
                          "assets/image 32 (1).png",
                          height: 130,
                        ),
                      ),
                      const Text(
                        "S",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "\$16",
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
          ],
        ),
      ),
    );
  }
}


