import 'package:eproject/app/modules/containermonitoring/widgets/custom_tab_container.dart';
import 'package:eproject/app/modules/driver/views/driver_view.dart';
import 'package:eproject/app/modules/home/views/home_view.dart';
import 'package:eproject/app/modules/truckmonitoring/views/truckmonitoring_view.dart';
import 'package:eproject/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Name ?"),
            accountEmail: const Text("xe1@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                // child: Image.network(
                //   "https://cdn.dribbble.com/users/2313212/screenshots/11256142/media/27b57b3ee2ac221dc8c616d02161d96b.jpg",
                //   width: 100,
                //   height: 100,
                //   fit: BoxFit.cover,
                // ),
                child: Image.asset(
                  "assets/image/avatar.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  // image: NetworkImage(
                  //   "https://static.seekingalpha.com/cdn/s3/uploads/getty_images/500823836/image_500823836.jpg?io=getty-c-w750",
                  // ),
                  image: AssetImage(
                    "assets/image/backroud.webp",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Trang chủ"),
            onTap: () {
              Get.offAndToNamed(Routes.MAINTABBAR);
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit_document),
            title: const Text("Thông tin"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.camera_front_rounded),
            title: const Text("Giám sát"),
            onTap: () {
              Get.offAndToNamed(Routes.MAINTABBAR);
            },
          ),
          ListTile(
            leading: const Icon(Icons.drive_eta_rounded),
            title: const Text("Tài xế"),
            onTap: () {
              Get.off(() => const DriverView());
            },
          ),
          ListTile(
            leading: const Icon(Icons.car_crash_sharp),
            title: const Text("Quản lý xe tải"),
            onTap: () {
              Get.off(() => const TruckmonitoringView());
            },
          ),
          ListTile(
            leading: const Icon(Icons.car_crash_sharp),
            title: const Text("Quản lý siêu xe"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.car_crash_sharp),
            title: const Text("Quản lý xe container"),
            onTap: () {
              Get.off(() => const TabContainer());
            },
          ),
        ],
      ),
    );
  }
}
