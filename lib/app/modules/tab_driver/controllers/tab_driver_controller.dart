import 'package:eproject/app/base/base_controller.dart';
import 'package:eproject/app/modules/command_driver/views/command_driver_view.dart';
import 'package:eproject/app/modules/running_driver/views/running_driver_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../driver/views/driver_view.dart';
import '../../maintabbar/views/maintabbar_view.dart';
import '../../received_oders/views/received_oders_view.dart';

class TabDriverController extends BaseController {
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
    const CommandDriverView(),
    const ReceivedOdersView(),
    const RunningDriverView(),
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
