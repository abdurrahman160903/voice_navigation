import 'package:flutter/material.dart';

import '../../../utils/device_utils.dart';

class RouteFinderWidget extends StatelessWidget {
  RouteFinderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.buttonText,
    required this.onTap,
  });

  AssetImage image;
  String title, subTitle, buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(DeviceUtils.screenWidth() * 0.025),
        width: double.infinity,
        height: DeviceUtils.screenHeight() * 0.16,
        decoration: BoxDecoration(
          color: Color(0xff09c878),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Image(
              image: image,
              width: DeviceUtils.screenWidth() * 0.3,
            ),
            SizedBox(width: DeviceUtils.screenWidth() * 0.025),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.apply(color: Colors.white),
                ),
                SizedBox(height: DeviceUtils.screenHeight() * 0.012),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodySmall?.apply(
                        color: Colors.white.withOpacity(0.8),
                      ),
                ),
                SizedBox(height: DeviceUtils.screenHeight() * 0.012),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: DeviceUtils.screenWidth() * 0.05),
                  padding: EdgeInsets.symmetric(
                      horizontal: DeviceUtils.screenWidth() * 0.12,
                      vertical: DeviceUtils.screenHeight() * 0.01),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Text(
                    buttonText,
                    style: Theme.of(context).textTheme.titleLarge?.apply(
                          color: Colors.black,
                        ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
