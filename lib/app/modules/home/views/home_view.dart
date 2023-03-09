import 'package:eproject/app/base/base_view.dart';
import 'package:eproject/app/components/carousel_example.dart';
import 'package:eproject/app/components/custom_appbar_navbar.dart';
import 'package:eproject/app/modules/containermonitoring/widgets/custom_tab_container.dart';
import 'package:eproject/app/modules/driver/views/driver_view.dart';
import 'package:eproject/app/modules/truckmonitoring/views/truckmonitoring_view.dart';
import 'package:eproject/app/resources/reponsize_utils.dart';
import 'package:eproject/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends BaseView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
        title: const Text('Trang chủ'),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: UtilsReponsive.height(context, 20)),
          const CarouselExample(),
          SizedBox(height: UtilsReponsive.height(context, 20)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  icon: Image.asset(
                    'assets/icon/lorry.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                  onPressed: () {
                    Get.off(() => const TruckmonitoringView());
                  },
                  label: const Text(
                    "Giám sát xe tải",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 3, 133, 194),
                    fixedSize: const Size(180, 80),
                  ),
                ),
                SizedBox(height: UtilsReponsive.width(context, 20)),
                ElevatedButton.icon(
                  icon: Image.asset(
                    'assets/icon/container.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                  onPressed: () {
                    Get.off(() => const TabContainer());
                  },
                  label: const Text(
                    "Giám sát container",
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                ElevatedButton.icon(
                  icon: Image.asset(
                    'assets/icon/driver.png',
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                  onPressed: () {
                    Get.off(() => DriverView());
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
