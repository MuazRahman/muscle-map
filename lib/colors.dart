import 'package:flutter/material.dart';

class colors{
  static Color get primayColor1 => const Color(0xff92A3FD);
  static Color get primayColor2 => const Color(0xff9DCEFF);

  static Color get secondaryColor1 => const Color(0xffC58BF2);
  static Color get secondaryColor2 => const Color(0xffC58BF2);

  static Color get black => const Color(0xff1D1617);
  static Color get grey => const Color(0xff786F72);
  static Color get white => Colors.white;

  static List<Color> get primaryGradient => [primayColor2, primayColor1];
  static List<Color> get secondaryGradient => [secondaryColor2, secondaryColor1];
}