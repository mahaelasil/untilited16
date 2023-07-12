import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;
  void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    orientation = MediaQuery.of(context).orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * 0.24
        : screenWidth! * 0.24;
    if (kDebugMode) {
      print('this is the default size$defaultSize');
    }
  }
}
