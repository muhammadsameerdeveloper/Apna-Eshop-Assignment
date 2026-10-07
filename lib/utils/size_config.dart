import 'package:flutter/material.dart';

class SizeConfig {
  static double width = 0;
  static double height = 0;

  static void init(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }

  static double text(double size) {
    return width * size;
  }
}
