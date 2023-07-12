import 'package:flutter/material.dart';
import 'package:untitled16/widgets/all_item_widget.dart';
import '../widgets/app_bar_widget.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
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
      const Padding(
        padding: EdgeInsets.only(top: 20, left: 10),
        child: Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      const AllItemWidget(),
    ]));
  }
}
