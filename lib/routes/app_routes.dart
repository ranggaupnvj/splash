import 'package:flutter/material.dart';
import 'package:splash/presentation/onboard_screen/onboard_screen.dart';
import 'package:splash/presentation/onboardtwo_screen/onboardtwo_screen.dart';
import 'package:splash/presentation/onboardthree_screen/onboardthree_screen.dart';
import 'package:splash/presentation/launchscreen_screen/launchscreen_screen.dart';
import 'package:splash/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardScreen = '/onboard_screen';

  static const String onboardtwoScreen = '/onboardtwo_screen';

  static const String onboardthreeScreen = '/onboardthree_screen';

  static const String launchscreenScreen = '/launchscreen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    onboardScreen: (context) => OnboardScreen(),
    onboardtwoScreen: (context) => OnboardtwoScreen(),
    onboardthreeScreen: (context) => OnboardthreeScreen(),
    launchscreenScreen: (context) => LaunchscreenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
