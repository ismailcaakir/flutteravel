import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config/colors.dart';

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
    bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Colors.blue[800],
      selectedLabelStyle: const TextStyle(
        fontSize: 14,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 14,
      ),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: const IconThemeData().copyWith(
        size: 25,
      ),
      unselectedIconTheme: const IconThemeData().copyWith(
        size: 25,
      ),
      enableFeedback: true,
    ),
  );
}
