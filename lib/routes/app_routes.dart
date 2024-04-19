import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/home_one_container_screen/home_one_container_screen.dart';
import '../presentation/profile_tab_container_screen/profile_tab_container_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String homeOneContainerScreen = '/home_one_container_screen';

  static const String homeOnePage = '/home_one_page';

  static const String profilePage = '/profile_page';

  static const String profileTabContainerScreen =
      '/profile_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    homeOneContainerScreen: (context) => HomeOneContainerScreen(),
    profileTabContainerScreen: (context) => ProfileTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => HomeOneContainerScreen()
  };
}
