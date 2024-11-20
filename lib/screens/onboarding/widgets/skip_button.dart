import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_navigation/controllers/onboarding_controller.dart';
import '../../../utils/device_utils.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnBoardingController>();
    return Obx(() {
      return controller.currentPageIndex.value == 0
          ? Positioned(
              top: DeviceUtils.getAppbarHeight(),
              right: 24,
              child: TextButton(
                onPressed: () => controller.skipPage(),
                child:
                    Text('Skip', style: Theme.of(context).textTheme.bodySmall),
              ),
            )
          : SizedBox.shrink();
    });
  }
}
