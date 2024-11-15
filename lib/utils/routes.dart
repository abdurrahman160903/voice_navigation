/// Routes Using Getx

import 'package:get/get.dart';
import 'package:voice_navigation/screens/language_selection/language_page.dart';
import '../screens/home_page/home_page.dart';
import '../screens/onboarding/onboarding.dart';

class Routes {
  static final route = [
    GetPage(
      name: '/home',
      page: () => const HomePage(),
    ),
    GetPage(
      name: '/language',
      page: () => const LanguagePage(),
    ),
    GetPage(
      name: '/onboarding',
      page: () => const OnBoarding(),
    ),
  ];
}
