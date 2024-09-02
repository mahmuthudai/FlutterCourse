import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConstant {
  static const primaryColor = Colors.indigo;

  static const title = 'Ortalama Hesapla';

  static final titleStyle = GoogleFonts.quicksand(
      fontSize: 24, fontWeight: FontWeight.w900, color: primaryColor);

  static final showAverageBodyStyle = GoogleFonts.quicksand(
      fontSize: 16, fontWeight: FontWeight.w600, color: primaryColor);

  static BorderRadius borderRadius = BorderRadius.circular(16);

  static final averageStyle = GoogleFonts.quicksand(
      fontSize: 55, fontWeight: FontWeight.w800, color: primaryColor);

  static const EdgeInsets dropDownPadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 8);

  static const EdgeInsets horizontalPadding8 =
      EdgeInsets.symmetric(horizontal: 8);

  static const EdgeInsets padding2 = EdgeInsets.all(2);
}
