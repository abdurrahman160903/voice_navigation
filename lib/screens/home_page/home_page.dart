import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:voice_navigation/common_widgets/app_bar_widget.dart';
import 'package:voice_navigation/screens/home_page/widgets/route_finder_widget.dart';
import 'package:voice_navigation/screens/home_page/widgets/section_heading.dart';
import 'package:voice_navigation/utils/constants/images.dart';
import 'package:voice_navigation/utils/device_utils.dart';

import '../../common_widgets/column_card.dart';
import '../../common_widgets/row_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        showBackButton: false,
        text: Text('voice_gps_navigator'.tr,
            style: Theme.of(context).textTheme.headlineMedium?.apply(
                  fontSizeDelta: -2,
                )),
        actionIcon: [
          IconButton(
            onPressed: () => Get.toNamed('/settings'),
            icon: Icon(Icons.settings),
            iconSize: 32.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Route Finder Widget
              RouteFinderWidget(
                onTap: () => Get.toNamed('/routeFinder'),
                image: AssetImage(NImages.routeFinder),
                title: 'route_finder'.tr,
                subTitle: 'find_route_title'.tr,
                buttonText: 'find_route'.tr,
              ),
              SizedBox(height: DeviceUtils.screenHeight() * 0.015),

              /// Travel Essentials Widget
              SectionHeading(title: 'travel_essentials'.tr),
              SizedBox(height: DeviceUtils.screenHeight() * 0.015),
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: ColumnCard(
                      title: 'nearby_places'.tr,
                      subtitle: 'nearby_places_title'.tr,
                      imagePath: NImages.nearByPlaces,
                      onTap: () {
                        Get.toNamed('/nearbyPlaces');
                      },
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 0.5,
                    child: RowCard(
                      title: 'speedometer'.tr,
                      subtitle: 'speedometer_title'.tr,
                      imagePath: NImages.speedometer,
                      onTap: () => Get.toNamed('/speedometer'),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 0.5,
                    child: RowCard(
                      title: 'weather'.tr,
                      subtitle: 'weather_title'.tr,
                      imagePath: NImages.weather,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: DeviceUtils.screenHeight() * 0.015),
              SectionHeading(title: 'navigation_tools'.tr),
              SizedBox(height: DeviceUtils.screenHeight() * 0.015),
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 0.5,
                    child: RowCard(
                      title: 'altimeter'.tr,
                      subtitle: 'altimeter_title'.tr,
                      imagePath: NImages.onBoarding2,
                      onTap: () {},
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 0.5,
                    child: RowCard(
                      title: 'compass'.tr,
                      subtitle: 'compass_title'.tr,
                      imagePath: NImages.compass,
                      onTap: () {},
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 0.5,
                    child: RowCard(
                      title: 'my_location'.tr,
                      subtitle: 'my_location_title'.tr,
                      imagePath: NImages.myLocation,
                      onTap: () {},
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 0.5,
                    child: RowCard(
                      title: 'street_view'.tr,
                      subtitle: 'street_view_title'.tr,
                      imagePath: NImages.streetView,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: DeviceUtils.screenHeight() * 0.015),
              SectionHeading(title: 'real_time_tools'.tr),
              SizedBox(height: DeviceUtils.screenHeight() * 0.015),
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 0.5,
                    child: RowCard(
                      title: 'live_traffic'.tr,
                      subtitle: 'live_traffic_title'.tr,
                      imagePath: NImages.liveTraffic,
                      onTap: () {},
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 0.5,
                    child: RowCard(
                      title: 'world_clock'.tr,
                      subtitle: 'world_clock_title'.tr,
                      imagePath: NImages.worldClock,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: DeviceUtils.screenHeight() * 0.015),
              SectionHeading(title: 'discovery_exploration'.tr),
              SizedBox(height: DeviceUtils.screenHeight() * 0.015),
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 0.5,
                    child: RowCard(
                      title: 'famous_places'.tr,
                      subtitle: 'famous_places_title'.tr,
                      imagePath: NImages.famousPlaces,
                      onTap: () {},
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 0.5,
                    child: RowCard(
                      title: 'seven_wonders'.tr,
                      subtitle: 'seven_wonders_title'.tr,
                      imagePath: NImages.sevenWonders,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
