/// Routes Using Getx

import 'package:get/get.dart';
import 'package:voice_navigation/screens/language_selection/language_page.dart';
import '../screens/home_page/home_page.dart';
import '../screens/nearby_places_page/nearby_places_page.dart';
import '../screens/onboarding/onboarding.dart';
import '../screens/route_finder_map/route_finder_map.dart';
import '../screens/settings/settings_page.dart';
import '../screens/speedometer_page/speedometer_page.dart';

class Routes {
  static final route = [
    GetPage(
      name: '/home',
      page: () => const HomePage(),
    ),
    GetPage(
      name: '/language',
      page: () => LanguagePage(
          showBackButton: Get.arguments['showBackButton'] ?? false,
          navigateToOnboarding: Get.arguments['navigateToOnboarding'] ?? false),
    ),
    GetPage(
      name: '/onboarding',
      page: () => const OnBoarding(),
    ),
    GetPage(
      name: '/settings',
      page: () => const SettingsPage(),
    ),
    GetPage(
      name: '/nearbyPlaces',
      page: () => const NearbyPlacesPage(),
    ),
    GetPage(
      name: '/routeFinder',
      page: () => const RouteFinderMap(),
    ),
    GetPage(
      name: '/speedometer',
      page: () => const SpeedometerPage(),
    ),
  ];
}
