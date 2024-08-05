import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.white),
      color: Color(0xFF13B9FF),
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white70,
      indicatorColor: Colors.white70,
    ),
    colorScheme: ColorScheme.fromSwatch(
      accentColor: const Color(0xFF13B9FF),
      backgroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.white),
    ),
  );
}
