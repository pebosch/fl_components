import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          // Color primario
          backgroundColor: primary,
        ),

        listTileTheme: ListTileThemeData(
          iconColor: primary,
        )
      );

}