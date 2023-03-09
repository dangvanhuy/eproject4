import 'package:eproject/app/base/base_view.dart';
import 'package:eproject/app/resources/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../controllers/maintabbar_controller.dart';

class MaintabbarView extends BaseView<MaintabbarController> {
  const MaintabbarView({Key? key}) : super(key: key);

  @override
  Widget buildView(BuildContext context) {
    final MaintabbarController _mainWrapperController =
        Get.find<MaintabbarController>();
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        notchMargin: 10,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _bottomAppBarItem(
                  icon: IconlyLight.home,
                  page: 0,
                  context,
                  label: "Dashboad",
                ),
                _bottomAppBarItem(
                    icon: IconlyLight.wallet,
                    page: 1,
                    context,
                    label: "Phân phối"),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: _mainWrapperController.pageController,
        physics: const BouncingScrollPhysics(),
        onPageChanged: _mainWrapperController.animateToTab,
        children: [..._mainWrapperController.pages],
      ),
    );
  }

  Widget _bottomAppBarItem(BuildContext context,
      {required icon, required page, required label}) {
    final MaintabbarController _mainWrapperController =
        Get.find<MaintabbarController>();
    return ZoomTapAnimation(
      onTap: () => _mainWrapperController.goToTab(page),
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: _mainWrapperController.currentPage == page
                  ? ColorConstants.appColors
                  : Colors.grey,
              size: 20,
            ),
            Text(
              label,
              style: TextStyle(
                  color: _mainWrapperController.currentPage == page
                      ? ColorConstants.appColors
                      : Colors.grey,
                  fontSize: 13,
                  fontWeight: _mainWrapperController.currentPage == page
                      ? FontWeight.w600
                      : null),
            ),
          ],
        ),
      ),
    );
  }
}
