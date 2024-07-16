import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle montserrat(
      { Color? fontColor,
        double? fontSize,
        FontWeight? fontWeight,
        FontStyle? fontStyle,
        String? fontFamily,
        TextDecoration? decoration }) {
    return GoogleFonts.montserrat(
        color: fontColor ?? Colors.grey,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontSize: fontSize ?? 16,
        fontStyle: fontStyle ?? FontStyle.normal,
        decoration: decoration ?? TextDecoration.none);
  }
}
