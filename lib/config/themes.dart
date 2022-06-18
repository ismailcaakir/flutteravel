import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge: GoogleFonts.poppinsTextTheme()
          .displayLarge
          ?.copyWith(fontWeight: FontWeight.w800, fontSize: 22),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(),
    scaffoldBackgroundColor: AppColor.transparent,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(),
    ),
    inputDecorationTheme: InputDecorationTheme(),
  );
}
