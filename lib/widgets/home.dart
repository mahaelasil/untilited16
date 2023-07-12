// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:untitled16/screen/catagory_page.dart';
import 'package:untitled16/screen/home_page.dart';
import 'package:untitled16/screen/popular_page.dart';
import 'package:untitled16/widgets/main_page.dart';

import '../screen/locationApp.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State <Home>{
  int _SelectedIndex=0;
  final _screen=[
    const HomePage(),
    const CategoryPage(),
    const LocationApp(),
const PopularPage(),
    const MainPage(),

  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screen[_SelectedIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            selectedLabelStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            currentIndex: _SelectedIndex,
            onTap: (index){
            setState(() {
              _SelectedIndex=index;
            });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home),
              label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.category),
                  label: "Category"),
              BottomNavigationBarItem(icon: Icon(Icons.location_on_rounded),
                  label: "Location App"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite),
              label: "popular"),
              BottomNavigationBarItem(icon: Icon(Icons.chat),
                  label: "chat"),

            ]
        ),
      ),
    );
  }
}