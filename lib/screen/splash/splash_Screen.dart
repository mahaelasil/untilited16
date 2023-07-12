
import 'dart:async';
import 'package:flutter/material.dart';
import '../../core/my_cashe_key.dart';
import '../../core/screen.dart';
import '../../data/data_source/local/my_cash.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  late final AnimationController _controller;
  late final AnimationController _slideController;

  @override
  void initState() {

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat(reverse: true);


    _slideController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      animationBehavior: AnimationBehavior.preserve,
      value: 1,
      vsync: this,
    )..repeat(reverse: true);


    Timer(const Duration(milliseconds: 4000), () {
      bool isOnBoardingViewed = MyCache.getBool(key: MyCacheKeys.isOnBoardingViewed);
      if(isOnBoardingViewed){
        Navigator.pushNamedAndRemoveUntil(
            context,
            loginScreen,
                (route) => false);
      }else {
        Navigator.pushNamedAndRemoveUntil(
            context,
            onBoardingScreen,
                (route) => false);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.withOpacity(0.4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Logo.png",
              color: Colors.cyan,
            ),
          ],
        ),
      ),
    );
  }
}

