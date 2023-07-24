
import 'package:get/get.dart';
import 'package:strive/SIgn-in%20page/screens/sign_in_page.dart';

import '../HomeScreen/screens/homeScreen.dart';
import '../SplashScreen/screens/splashscreen.dart';

class myRoutes {
  static const splashScreen = "/splashScreen";
  static const homeScreen = "/homeScreen";
  static const signinScreen = "/signinScreen";
}

class Pages {
  static const splashScreen = myRoutes.splashScreen;
  static final routes = [
    GetPage(name: myRoutes.splashScreen, page: () => const SplashScreen()),
    GetPage(name: myRoutes.homeScreen, page: () => const HomeScreen()),
    GetPage(name: myRoutes.signinScreen, page: () => const SignInScreen())
  ];
}
