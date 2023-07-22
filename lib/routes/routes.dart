import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../HomeScreen/screens/homeScreen.dart';
import '../SplashScreen/screens/splashscreen.dart';

class myRoutes {
  static const splashScreen = "/splashScreen";
  static const homeScreen = "/homeScreen";
}

class Pages {
  static const splashScreen = myRoutes.splashScreen;
  static final routes = [
    GetPage(name: myRoutes.splashScreen, page: () => const SplashScreen()),
    GetPage(name: myRoutes.homeScreen, page: () => const HomeScreen()),
  ];
}
