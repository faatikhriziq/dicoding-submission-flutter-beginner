import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFont {
  static TextStyle normal = GoogleFonts.poppins(fontWeight: FontWeight.normal);
  static TextStyle medium = GoogleFonts.poppins(fontWeight: FontWeight.w600);
  static TextStyle bold = GoogleFonts.poppins(fontWeight: FontWeight.bold);
}

extension AppFontSize on TextStyle {
  TextStyle get size12 => copyWith(fontSize: 12);
  TextStyle get size14 => copyWith(fontSize: 14);
  TextStyle get size16 => copyWith(fontSize: 16);
  TextStyle get size18 => copyWith(fontSize: 18);
  TextStyle get size20 => copyWith(fontSize: 20);
  TextStyle get size22 => copyWith(fontSize: 22);
  TextStyle get size24 => copyWith(fontSize: 24);
  TextStyle get size26 => copyWith(fontSize: 26);
}
