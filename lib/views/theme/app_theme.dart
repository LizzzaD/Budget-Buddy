import 'package:budget_buddy/views/theme/styles_palette.dart';
import 'package:flutter/material.dart';

import 'colors_palette.dart';
import 'theme_style.dart';

class AppTheme {
  static ThemeData get getLightTheme => ThemeData(
        extensions: [
          ThemeStyle(
            colors: darkColorsPalette,
            styles: lightStylePalette,
          ),
        ],
        brightness: Brightness.light,
        scaffoldBackgroundColor: darkColorsPalette.backgroundColor,
      );

  static ThemeData get getDarkTheme => ThemeData(
        extensions: [
          ThemeStyle(
            colors: darkColorsPalette,
            styles: lightStylePalette,
          ),
        ],
        brightness: Brightness.dark,
        scaffoldBackgroundColor: darkColorsPalette.backgroundColor,
      );

  static const darkColorsPalette = ColorsPalette(
    backgroundColor: Color.fromRGBO(8, 12, 37, 1),
    secondaryColor: Color.fromRGBO(53, 51, 88, 1),
    textSecondaryColor: Color.fromRGBO(166, 178, 236, 1),
    white: Color.fromRGBO(255, 255, 255, 1),
    black: Color.fromRGBO(0, 0, 0, 1),
    blue: Color.fromRGBO(14, 0, 255, 1),
    purple: Color.fromRGBO(208, 23, 254, 1),
    red: Color.fromRGBO(227, 52, 83, 1),
    green: Color.fromRGBO(39, 212, 67, 1),
    yellow: Color.fromRGBO(200, 195, 68, 1),
    lightBlue: Color.fromRGBO(35, 211, 222, 1),
    orange: Color.fromRGBO(245, 171, 60, 1),
    pink: Color.fromRGBO(229, 84, 171, 1),
  );

  static StylesPalette lightStylePalette = StylesPalette(
    bold16: Montserrat.bold16,
    semibold24: Montserrat.semibold24,
    semibold16: Montserrat.semibold16,
    semibold12: Montserrat.semibold12,
    medium32: Montserrat.medium32,
    medium24: Montserrat.medium24,
    medium16: Montserrat.medium16,
    medium12: Montserrat.medium12,
    medium10: Montserrat.medium10,
    medium8: Montserrat.medium8,
    regular16: Montserrat.regular16,
    regular12: Montserrat.regular12,
    regular10: Montserrat.regular10,
    light24: Montserrat.light24,
    light10: Montserrat.light10,
  );
}
