import 'package:flutter/material.dart';
import 'package:voice_navigation/controllers/onboarding_controller.dart';
import '../../../utils/device_utils.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 24,
      bottom: DeviceUtils.getNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(16),
        ),
        onPressed: () => OnBoardingController.instance.nextPage(),
        child: Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}
