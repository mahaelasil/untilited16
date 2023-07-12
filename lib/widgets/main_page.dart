// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:untitled16/screen/chat_page.dart';
import 'package:untitled16/screen/finish_order.dart';
import 'package:untitled16/screen/locationApp.dart';

import '../screen/favourite_page.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends State <MainPage>{
  int _SelectedIndex=0;
  final _screen=[
    const ChatPage(),
const FinishOrder(),
    const FavouritePage(),

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
              BottomNavigationBarItem(icon: Icon(Icons.message),
                  label: "Message"),
              BottomNavigationBarItem(icon: Icon(Icons.check),
                  label: "finish order"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite),
                  label: "Favorite"),
             
            ]
        ),
      ),
    );
  }
}