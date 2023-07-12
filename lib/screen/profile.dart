import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../core/screen.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/favourite.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: ListView(children: [
              const AppBarWidget(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset(
                  "assets/Photo Profile (7).png",
                  height: 100,
                  // width: 100,
                  // width: double.infinity,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  "Memory Gold",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                  color: Colors.orange),
                ),
              ),
              Arc(
                  edge: Edge.TOP,
                  arcType: ArcType.CONVEY,
                  height: 30,
                  child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 60, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RatingBar.builder(
                                    initialRating: 4,
                                    maxRating: 1,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    itemSize: 18,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.red,
                                    ),
                                    onRatingUpdate: (index) {},
                                  ),
                                  const Text(
                                    "\$35",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Anam  Wusono",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    width: 90,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Icon(
                                          Icons.minimize,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        Text(
                                          "1",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "anamwp66@gmail.com",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            const Icon(Icons.edit),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "You Have 3 Voucher",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20, left: 10),
                              child: Text(
                                "Favourite",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            const Favourite(),
                          ]),
                          ),
                      ),

                  ),
            ]
            ),
        ),

      floatingActionButton: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ]),
        child: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamedAndRemoveUntil(
              context, home, (route) => false,
            );},
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.favorite,
            size: 28,
            color: Colors.red,
          ),

        ),

      ),
    );
  }
}
