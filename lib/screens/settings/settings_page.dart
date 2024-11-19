import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_navigation/common_widgets/app_bar_widget.dart';
import 'package:voice_navigation/screens/settings/widgets/custom_list_tile.dart';
import 'package:voice_navigation/utils/constants/images.dart';

import '../../utils/device_utils.dart';
import '../language_selection/language_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: Text('settings'.tr,
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// General Section
            Text(
              'general'.tr,
              style: Theme.of(context).textTheme.headlineMedium?.apply(
                    color: Color(0xff09C878),
                  ),
            ),
            SizedBox(height: DeviceUtils.screenHeight() * 0.015),
            CustomListTIle(
              leadingIcon: Image.asset(
                NImages.language,
                height: 32,
                width: 32,
              ),
              trailingIcon: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
              ),
              title: 'language'.tr,
              onTap: () {
                Get.toNamed(
                  '/language',
                  arguments: {
                    'showBackButton': true,
                    'navigateToOnboarding': false,
                  },
                );
              },
            ),
            SizedBox(height: DeviceUtils.screenHeight() * 0.015),
            CustomListTIle(
              leadingIcon: Image.asset(
                NImages.theme,
                height: 32,
                width: 32,
              ),

              /// change theme button
              trailingIcon: Switch(
                activeThumbImage: AssetImage(NImages.moon),
                thumbColor: WidgetStateProperty.all(Colors.white),
                activeTrackColor: Color(0xff09C878),
                inactiveThumbImage: AssetImage(NImages.light),
                inactiveTrackColor: Colors.grey[300],
                trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
                value: DeviceUtils.isDarkMode(context),
                onChanged: (value) {
                  setState(
                    () {
                      Get.changeThemeMode(
                          value ? ThemeMode.dark : ThemeMode.light);
                    },
                  );
                },
              ),
              title: 'themes'.tr,
              onTap: () {},
            ),
            SizedBox(height: DeviceUtils.screenHeight() * 0.015),

            /// About Section
            Text(
              'about'.tr,
              style: Theme.of(context).textTheme.headlineMedium?.apply(
                    color: Color(0xff09C878),
                  ),
            ),
            SizedBox(height: DeviceUtils.screenHeight() * 0.015),
            CustomListTIle(
              leadingIcon: Image.asset(
                NImages.privacy,
                height: 32,
                width: 32,
              ),
              title: 'privacy_policy'.tr,
              onTap: () {},
            ),
            SizedBox(height: DeviceUtils.screenHeight() * 0.015),
            CustomListTIle(
              leadingIcon: Image.asset(
                NImages.rateUs,
                height: 32,
                width: 32,
              ),
              title: 'rate_us'.tr,
              onTap: () {},
            ),
            SizedBox(height: DeviceUtils.screenHeight() * 0.015),
            CustomListTIle(
              leadingIcon: Image.asset(
                NImages.share,
                height: 32,
                width: 32,
              ),
              title: 'share'.tr,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
