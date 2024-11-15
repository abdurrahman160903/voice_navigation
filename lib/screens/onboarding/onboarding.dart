import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_navigation/screens/onboarding/widgets/circular_button.dart';
import 'package:voice_navigation/screens/onboarding/widgets/dot_navigation.dart';
import 'package:voice_navigation/screens/onboarding/widgets/onboarding_page.dart';
import 'package:voice_navigation/screens/onboarding/widgets/skip_button.dart';
import 'package:voice_navigation/utils/constants/images.dart';
import '../../controllers/onboarding_controller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
        body: Stack(
      children: [
        /// Horizontal Scrollable Pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: [
            OnBoardingPage(
              title: 'onboarding_title1',
              subtitle: 'onboarding_subtitle1',
              image: NImages.onBoarding1,
            ),
            OnBoardingPage(
              title: 'onboarding_title2',
              subtitle: 'onboarding_subtitle2',
              image: NImages.onBoarding2,
            ),
            OnBoardingPage(
              title: 'onboarding_title3',
              subtitle: 'onboarding_subtitle3',
              image: NImages.onBoarding3,
            ),
          ],
        ),

        /// Skip Button
        SkipButton(),

        /// Dot Navigation SmoothPageIndicator
        DotNavigation(),

        /// Circular Button
        CircularButton(),
      ],
    ));
  }
}
