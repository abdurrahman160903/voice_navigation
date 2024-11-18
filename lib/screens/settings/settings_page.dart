import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_navigation/common_widgets/app_bar_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: Text('settings'.tr,
            style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }
}
