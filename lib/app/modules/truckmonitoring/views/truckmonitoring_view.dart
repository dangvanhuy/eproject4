import 'package:eproject/app/base/base_view.dart';
import 'package:eproject/app/components/custom_appbar_navbar.dart';
import 'package:eproject/app/modules/truckmonitoring/widgets/dashboad_order.dart';
import 'package:eproject/app/modules/truckmonitoring/widgets/dashboad_trip.dart';
import 'package:eproject/app/modules/truckmonitoring/widgets/incurred.dart';
import 'package:eproject/app/resources/reponsize_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/truckmonitoring_controller.dart';

class TruckmonitoringView extends BaseView<TruckmonitoringController> {
  const TruckmonitoringView({Key? key}) : super(key: key);
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
        title: const Text('Giám sát xe tải'),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: UtilsReponsive.height(context, 20)),
          Center(
            child: ElevatedButton.icon(
              icon: Image.asset(
                'assets/icon/truckship.png',
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
              onPressed: () {
                Get.off(() => const DashboadTrip());
              },
              label: const Text(
                "Dashboad chuyến đi",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 3, 133, 194),
                fixedSize: const Size(280, 100),
              ),
            ),
          ),
          SizedBox(height: UtilsReponsive.width(context, 20)),
          ElevatedButton.icon(
            icon: Image.asset(
              'assets/icon/checklist.png',
              height: 70,
              width: 70,
              fit: BoxFit.cover,
              color: Colors.amber,
            ),
            onPressed: () {
              Get.off(() => const DashboadOder());
            },
            label: const Text(
              "Dashboad đơn hàng",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 3, 133, 194),
              fixedSize: const Size(280, 100),
            ),
          ),
          SizedBox(height: UtilsReponsive.width(context, 20)),
          ElevatedButton.icon(
            icon: Image.asset(
              'assets/icon/chiphi.png',
              height: 70,
              width: 70,
              fit: BoxFit.cover,
              color: Colors.amber,
            ),
            onPressed: () {
              Get.off(() => const Incurred());
            },
            label: const Text(
              "Giám sát phí phát sinh",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 3, 133, 194),
              fixedSize: const Size(280, 100),
            ),
          ),
        ],
      ),
    );
  }
}
