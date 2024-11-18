import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:voice_navigation/common_widgets/app_bar_widget.dart';
import 'package:voice_navigation/screens/home_page/widgets/route_finder_widget.dart';
import 'package:voice_navigation/screens/home_page/widgets/section_heading.dart';
import 'package:voice_navigation/utils/constants/images.dart';
import 'package:voice_navigation/utils/device_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        showBackButton: false,
        text: Text('voice_gps_navigator'.tr,
            style: Theme.of(context).textTheme.headlineMedium),
        actionIcon: [
          IconButton(
            onPressed: () {},
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
                onTap: () {},
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
                crossAxisCount: 2, // 2 columns
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  // Nearby Places (Full width)
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1, // Full width
                    mainAxisCellCount: 1.25, // Smaller height
                    child: _buildCard(
                      title: 'Nearby Places',
                      subtitle: 'Explore Around You.',
                      imagePath: 'assets/images/main_page/nearby_places.png',
                      backgroundColor: Colors.orange.withOpacity(0.1),
                    ),
                  ),
                  // Speedometer (Half width with row layout)
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1, // Half width
                    mainAxisCellCount: 1, // Smaller size
                    child: _buildRowCard(
                      title: 'Speedometer',
                      subtitle: 'Gauge Your Drive.',
                      imagePath: 'assets/images/main_page/speedometer.png',
                      backgroundColor: Colors.green.withOpacity(0.1),
                    ),
                  ),
                  // Weather (Half width)
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1, // Half width
                    mainAxisCellCount: 1, // Smaller size
                    child: _buildRowCard(
                      title: 'Weather',
                      subtitle: 'Sun, Rain, Shine.',
                      imagePath: 'assets/images/main_page/weather.png',
                      backgroundColor: Colors.blue.withOpacity(0.1),
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

Widget _buildRowCard({
  required String title,
  required String subtitle,
  required String imagePath,
  required Color backgroundColor,
}) {
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      children: [
        Image.asset(imagePath, height: 50),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 4),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildCard({
  required String title,
  required String subtitle,
  required String imagePath,
  required Color backgroundColor,
}) {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 60),
        SizedBox(height: 12),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8),
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
