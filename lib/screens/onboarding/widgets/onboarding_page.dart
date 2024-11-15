import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/device_utils.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final String title, subtitle, image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Image(
            width: DeviceUtils.screenWidth() * 0.8,
            height: DeviceUtils.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title.tr,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Text(
            subtitle.tr,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
