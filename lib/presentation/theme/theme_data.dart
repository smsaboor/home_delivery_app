
import 'package:flutter/material.dart';
import 'package:home_delivery_app/presentation/theme/core_theme.dart';
import 'package:home_delivery_app/presentation/theme/themes.dart';

enum AppTheme {
  LightAppTheme,
  DarkAppTheme,
}
final appThemeData = {
  AppTheme.DarkAppTheme: MyThemes.themeLight,
  AppTheme.LightAppTheme: MyThemes.themeDark
};