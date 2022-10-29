import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'all_fontSize.dart';
import 'app_colors.dart';

TextStyle _style(
    {FontWeight? fontWeight,
    Color? color,
    double? fontSize,
    String? fontFamily,
    TextDecoration? textDecoration}) {
  return TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
      fontFamily: fontFamily,
      decoration: textDecoration);
}

TextStyle infoTextStyle() {
  return _style(
      fontWeight: FontWeight.bold,
      color: ColorApp.FontColorBlack,
      fontSize: AllFontSize.f11);
}

TextStyle mediumTextStyle() {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      color: ColorApp.FontColorBlack,
      fontSize: AllFontSize.f10);
}

TextStyle sTextStyle() {
  return _style(
      fontWeight: FontWeight.bold,
      color: ColorApp.FontColorBlack,
      fontSize: AllFontSize.f9);
}

TextStyle BigTextStyle() {
  return _style(
      fontWeight: FontWeight.bold,
      color: ColorApp.white,
      fontSize: AllFontSize.f16);
}
