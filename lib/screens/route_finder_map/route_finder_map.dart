import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:voice_navigation/common_widgets/app_bar_widget.dart';

import '../../utils/device_utils.dart';

class RouteFinderMap extends StatelessWidget {
  const RouteFinderMap({super.key});

  @override
  Widget build(BuildContext context) {
    CameraOptions camera = CameraOptions(
        center: Point(coordinates: Position(-0.1278, 51.5074)),
        zoom: 12,
        bearing: 0,
        pitch: 0);
    return Scaffold(
      appBar: AppBarWidget(
        text: Center(
          child: Text('route_finder'.tr,
              style: Theme.of(context).textTheme.headlineMedium),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 14, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: DeviceUtils.screenWidth() * 0.76,
                  child: SearchBar(
                    leading: Icon(Icons.search),
                    hintText: 'where_to'.tr,
                  ),
                ),
                SizedBox(width: DeviceUtils.screenWidth() * 0.02),
                SizedBox(
                  width: DeviceUtils.screenWidth() * 0.136,
                  height: DeviceUtils.screenHeight() * 0.063,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_voice_outlined),
                    style: IconButton.styleFrom(
                      backgroundColor: Color(0xff09c878),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: MapWidget(
              cameraOptions: camera,
            ),
          )
        ],
      ),
    );
  }
}
