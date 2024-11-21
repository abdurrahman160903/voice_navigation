import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_navigation/common_widgets/app_bar_widget.dart';
import 'package:voice_navigation/controllers/nearby_places_controller.dart';

class NearbyPlacesPage extends StatelessWidget {
  const NearbyPlacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final NearbyPlacesController nearbyPlacesController =
        Get.put(NearbyPlacesController());

    return Scaffold(
      appBar: AppBarWidget(
        text: Text('nearby_places'.tr,
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
          () => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
            ),
            itemCount: nearbyPlacesController.nearByPlacesModel.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    nearbyPlacesController.nearByPlacesModel[index].image!,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(height: 5),
                  Text(
                      nearbyPlacesController
                          .nearByPlacesModel[index].titleKey!.tr,
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
