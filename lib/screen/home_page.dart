import 'package:flutter/material.dart';
import 'package:untitled16/widgets/drawer_widget.dart';
import 'package:untitled16/widgets/categories_items_widget.dart';

import '../core/screen.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/food_widget.dart';
import '../widgets/popular_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const AppBarWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Container(
              width: double.infinity,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white60,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3))
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 200,
                      width: 250,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "What do you want to order?",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const FoodWidget(),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Popular result",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          const CategoriesItemWidget(),

          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),

            child: Text(
              "Popular menu",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          const PopularItemWidget(),
        ],
      ),
      drawer: const DrawerWidget(),
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
                  context, cartPage, (route) => false,
              );},
          backgroundColor: Colors.white,
        child: const Icon(
          Icons.add_shopping_cart,
          size: 28,
          color: Colors.red,
        ),

        ),

      ),


    );
  }
}
