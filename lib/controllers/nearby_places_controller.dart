import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:voice_navigation/models/nearby_places_model.dart';

class NearbyPlacesController extends GetxController {
  RxList<NearbyPlacesModel> nearByPlacesModel = <NearbyPlacesModel>[].obs;

  @override
  void onInit() {
    getNearByPlaces();
    super.onInit();
  }

  Future<void> getNearByPlaces() async {
    final String data =
        await rootBundle.loadString('assets/json/nearby_places.json');
    nearByPlacesModel.value = List<NearbyPlacesModel>.from(
        jsonDecode(data).map((x) => NearbyPlacesModel.fromJson(x)));
    print(nearByPlacesModel.value);
  }
}
