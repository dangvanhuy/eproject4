import 'package:eproject/app/base/base_controller.dart';
import 'package:eproject/app/modules/home/views/home_view.dart';
import 'package:eproject/app/modules/trip_list/views/trip_list_view.dart';
import 'package:eproject/app/modules/truckmonitoring/widgets/dashboad_order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:quickalert/quickalert.dart';
import 'package:location/location.dart' as locat;

class MaintabbarController extends BaseController {
  @override
  void onInit() async {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  late PageController pageController;

  RxInt currentPage = 0.obs;
  RxBool isDarkTheme = false.obs;

  List<Widget> pages = [
    const HomeView(),
    const TripListView(),
    // const StatisticsTab(),
    // const ProfileTab(),
  ];

  ThemeMode get theme => Get.isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void switchTheme(ThemeMode mode) {
    Get.changeThemeMode(mode);
  }

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }

  void animateToTab(int page) {
    currentPage.value = page;
    pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
}
