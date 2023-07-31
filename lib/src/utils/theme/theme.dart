import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kavach/src/utils/theme/widget_themes/text_theme.dart';


class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme =  ThemeData(
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(
        0xFF00EAB1,
        <int, Color>{
          50: Color(0xFFE6F9F6),
          100: Color(0xFFB3E8DC),
          200: Color(0xFFFFFFFF),
          300: Color(0xFF4DC6A9),
          400: Color(0xFF26BA99),
          500: Color(0xFF00B996),
          600: Color(0xFF00D5A6),
          700: Color(0xFF00C497),
          800: Color(0xFF00B387),
          900: Color(0xFF008F6D),
        }
    ),
      textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom())
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme
  );
}



