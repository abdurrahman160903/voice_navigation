import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_navigation/common_widgets/app_bar_widget.dart';
import 'package:voice_navigation/utils/constants/languages.dart';

/// Language Selection Page
class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  String? _selectedLanguageCode = 'en_US';
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          showBackButton: false,
          text: Center(
            child: Text('select_language'.tr,
                style: Theme.of(context).textTheme.headlineSmall),
          ),
          actionIcon: [
            IconButton(
              onPressed: () {
                if (_selectedLanguageCode != null) {
                  Get.updateLocale(Locale(_selectedLanguageCode!));
                }
              },
              icon: const Icon(Icons.check_outlined),
              style: IconButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xff09c878),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: ListView.builder(
            itemCount: Languages.length,
            itemBuilder: (context, index) {
              final language = Languages[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  title: Text(language['name']!),
                  selected: _selectedIndex == index,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(
                      color: _selectedIndex == index
                          ? Colors.green
                          : Colors.transparent,
                      width: 2,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedLanguageCode = language['code'];
                      _selectedIndex = index;
                    });
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
