import 'package:flutter/material.dart';
import 'package:home_delivery_app/util/constants.dart';
import 'app_theme.dart';

class MyThemes {
  static final primary = Colors.blue;
  static final primaryColor = Colors.blue.shade300;
  static final themeLight = ThemeData(
    textTheme: TextTheme(
        button: TextStyle(fontSize: 45)
    ),
    fontFamily: FONT_FAMILY,
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    dividerColor: Colors.white60,
    splashColor: Colors.transparent,
    primaryColor: const Color(0xffee8f8b),
    scaffoldBackgroundColor: Colors.white,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      },
    ),
    colorScheme: ThemeData.light().colorScheme.copyWith(
      brightness: Brightness.light,
      primary: AppTheme.light.primary,
      background: AppTheme.light.background,
    ),
  );

  static final themeDark = ThemeData(
    textTheme: TextTheme(
        button: TextStyle(fontSize: 45)
    ),
    fontFamily: FONT_FAMILY,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    dividerColor: Colors.black12,
    splashColor: Colors.transparent,
    scaffoldBackgroundColor: Colors.grey[850],
    backgroundColor: const Color(0xFF212121),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      },
    ),
    colorScheme: ThemeData.light().colorScheme.copyWith(
      brightness: Brightness.dark,
      primary: AppTheme.light.primary,
      background: AppTheme.light.background,
    ),
  );
}
