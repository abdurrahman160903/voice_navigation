import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_navigation/screens/settings/settings_page.dart';
import 'package:voice_navigation/utils/routes.dart';
import 'package:voice_navigation/utils/themes/theme.dart';
import 'localization/app_localization.dart';

void main() {
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
      home: const SettingsPage(),
    );
  }
}
