
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:home_delivery_app/presentation/screens/screen_bottom_nav.dart';

class RouteGenerator {
  static const String splashScreen = '/';
  static const String bottomNavScreen = '/tab';
  static const String homeScreen = '/home';
  static const String thankyou = '/thank_you';
  static const String error = '/error';
  static const String locationPermission = '/location_permission';
  static const String notificationPermission = '/notification_permission';
  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => Container());
      case bottomNavScreen:
        return MaterialPageRoute(builder: (_) => ScreenBottomNav());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => Container());
      default:
        return MaterialPageRoute(builder: (_) => ScreenBottomNav());
    }
  }
}
