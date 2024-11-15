import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        // English translations
        'en_US': {
          'select_language': 'Select Language',
          'onboarding_title1': 'Navigate Your World',
          'onboarding_subtitle1':
              'Get where you need to go with real-time directions and traffic updates. Enter your destination and start your journey.',
          'onboarding_title2': 'Reach New Heights',
          'onboarding_subtitle2':
              'Track your elevation on your next adventure. Perfect for hiking, biking, and more.',
          'onboarding_title3': 'Stay Ahead of the Weather',
          'onboarding_subtitle3':
              'Get the latest weather updates for your location. Plan your day with confidence.',
        },
        // Arabic translations
        'ar_SA': {
          'select_language': 'اختر اللغة',
        },
        // German translations
        'de_DE': {
          'select_language': 'Sprache auswählen',
        },
        // French translations
        'fr_FR': {
          'select_language': 'Choisir la langue',
        },
        // Hindi translations
        'hi_IN': {
          'select_language': 'भाषा चुनें',
        },
        // Spanish translations
        'es_ES': {
          'select_language': 'Seleccionar idioma',
        }
      };
}
