import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:voice_navigation/screens/language_selection/language_page.dart';
import 'package:voice_navigation/screens/route_finder_map/route_finder_map.dart';
import 'package:voice_navigation/screens/speedometer_page/speedometer_page.dart';
import 'package:voice_navigation/utils/routes.dart';
import 'package:voice_navigation/utils/themes/theme.dart';
import 'localization/app_localization.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppTranslations(),
      locale: const Locale('en_US'),
      fallbackLocale: const Locale('en_US'),
      themeMode: ThemeMode.system,
      theme: NAppTheme.lightTheme,
      darkTheme: NAppTheme.darkTheme,
      getPages: Routes.route,
      builder: (context, child) {
        return Directionality(
          textDirection: Get.locale?.languageCode == 'ar_SA'
              ? TextDirection.rtl
              : TextDirection.ltr,
          child: child!,
        );
      },
      home: LanguagePage(
        showBackButton: false,
        navigateToOnboarding: true,
      ),
      // home: RouteFinderMap(),
    );
  }
}
