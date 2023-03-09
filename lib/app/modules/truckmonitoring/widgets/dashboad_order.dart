import 'package:eproject/app/base/base_view.dart';
import 'package:eproject/app/modules/truckmonitoring/controllers/truckmonitoring_controller.dart';
import 'package:eproject/app/modules/truckmonitoring/views/truckmonitoring_view.dart';
import 'package:eproject/app/modules/truckmonitoring/widgets/chart.dart';
import 'package:eproject/app/modules/truckmonitoring/widgets/chart_oder.dart';
import 'package:eproject/app/resources/reponsize_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DashboadOder extends BaseView<TruckmonitoringController> {
  const DashboadOder({Key? key}) : super(key: key);

  @override
  Widget buildView(BuildContext context) {
    final TruckmonitoringController truckmonitoringController =
        Get.put(TruckmonitoringController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.off(() => const TruckmonitoringView());
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Đơn Hàng'),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: UtilsReponsive.width(context, 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.firtchooseDate();
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(120, 50),
                  ),
                  child: Obx(
                    () => Column(
                      children: [
                        const Text(
                          "Từ ngày",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: UtilsReponsive.width(context, 2)),
                        Text(
                          DateFormat("dd-MM-yyyy")
                              .format(controller.selectedDatefirt.value)
                              .toString(),
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.lastchooseDate();
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(120, 50),
                  ),
                  child: Obx(
                    () => Column(
                      children: [
                        const Text(
                          "Đến ngày",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: UtilsReponsive.width(context, 2)),
                        Text(
                          DateFormat("dd-MM-yyyy")
                              .format(controller.selectedDatelast.value)
                              .toString(),
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.bar_chart),
                  onPressed: () {},
                  label: const Text(
                    "Chart",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(120, 50),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 80),
                      backgroundColor: Colors.amber,
                    ),
                    child: const Text(
                      "Mới tạo",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 80),
                      backgroundColor: Colors.green,
                    ),
                    child: const Text("Kế hoạch"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 80),
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text("V.chuyển"),
                  ),
                ],
              ),
            ),
            SizedBox(height: UtilsReponsive.width(context, 20)),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: SizedBox(
                height: 350,
                width: 400,
                child: Expanded(
                  child: ChartOder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
