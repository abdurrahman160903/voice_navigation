import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_navigation/common_widgets/app_bar_widget.dart';

class NearbyPlacesPage extends StatelessWidget {
  const NearbyPlacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: Text('nearby_places'.tr,
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              );
            },
            itemCount: 10,
          )),
    );
  }
}
