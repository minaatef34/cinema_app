import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.poppins().fontFamily,
    colorScheme: ColorScheme.dark(
      primary: AppColors.mainColor,
    )
  );
}
