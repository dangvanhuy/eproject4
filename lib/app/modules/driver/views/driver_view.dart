import 'package:eproject/app/base/base_view.dart';
import 'package:eproject/app/components/custom_appbar_navbar.dart';
import 'package:eproject/app/modules/command_driver/views/command_driver_view.dart';
import 'package:eproject/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/driver_controller.dart';

class DriverView extends BaseView<DriverController> {
  const DriverView({Key? key}) : super(key: key);
  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu_rounded),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text('TMS Driver'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                Get.offAllNamed(Routes.TAB_DRIVER);
              }),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
              icon: Image.asset(
                'assets/icon/driver.png',
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
              onPressed: () {
                Get.offAllNamed(Routes.RUNNING_DRIVER);
              },
              label: const Text(
                "Tài xế",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 3, 133, 194),
                fixedSize: const Size(180, 80),
              ),
            ),
            ElevatedButton.icon(
              icon: Image.asset(
                'assets/icon/driver.png',
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
              onPressed: () {
                Get.offAllNamed(Routes.ODER_DETAILS);
              },
              label: const Text(
                "Thông tin",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 3, 133, 194),
                fixedSize: const Size(180, 80),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
