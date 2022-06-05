
part of '../cubit/cubit_theme.dart';

class ThemeState {
  final bool isDarkThemeOn;
  ThemeData? currentTheme;
  ThemeState({required this.isDarkThemeOn}) {
    if (isDarkThemeOn) {
      currentTheme = appThemeData[AppTheme.DarkAppTheme];
    } else {
      currentTheme = appThemeData[AppTheme.LightAppTheme];
    }
  }

  ThemeState copyWith({bool? changeState}) {
    return ThemeState(isDarkThemeOn: changeState ?? this.isDarkThemeOn);
  }
}