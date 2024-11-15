import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:voice_navigation/controllers/onboarding_controller.dart';

import '../../../utils/device_utils.dart';

class DotNavigation extends StatelessWidget {
  const DotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: DeviceUtils.getNavigationBarHeight() + 25,
      left: 24,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: Color(0xff09c878), dotHeight: 6),
      ),
    );
  }
}
