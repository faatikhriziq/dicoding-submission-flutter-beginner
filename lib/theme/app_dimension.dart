import 'package:flutter/material.dart';

class AppDimension {
  // Padding
  static const EdgeInsets edgeInsetsAll8 = EdgeInsets.all(8);
  static const EdgeInsets edgeInsetsAll16 = EdgeInsets.all(16);
  static const EdgeInsets edgeInsetsAll24 = EdgeInsets.all(24);
  static const EdgeInsets edgeInsetsAll32 = EdgeInsets.all(32);
  static const EdgeInsets edgeInsetsAll40 = EdgeInsets.all(40);

  // MediaQuery
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
}
