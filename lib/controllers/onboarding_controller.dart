import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index When Page Scrolled
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump To The Specific Dot Selected Page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Update Current Index & Jump To Next Page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.toNamed('/home');
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update Current Index & Jump To Last Page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
