import 'package:eproject/app/base/base_view.dart';
import 'package:eproject/app/modules/oder_details/views/oder_details_view.dart';
import 'package:eproject/app/modules/trip_list/views/trip_list_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/flight_details_controller.dart';

class FlightDetailsView extends BaseView<FlightDetailsController> {
  const FlightDetailsView({Key? key}) : super(key: key);
  @override
  Widget buildView(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.off(() => const TripListView());
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Text('Chi tiết đơn hàng'),
          centerTitle: true,
          actions: [
            IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  // Get.off(() => const CommandDriverView());
                }),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Colors.grey[200],
                ),
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: Colors.pink,
                  ),
                  tabs: const [
                    Tab(
                      text: 'Trạng thái',
                    ),
                    Tab(
                      text: 'Lộ trình',
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Mã chuyến : DBYTSISSI',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Tổng tấn : 1 - ',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      'Tổng khối : 10 - ',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      'Tổng sản lượng : 1000',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.local_shipping),
                      const Text(
                        '  Kho Dow - ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const Text(
                        '  Kho ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        '  Kho Dow',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Thời gian : 24/3/2023 lúc 11 giờ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Nhiệt độ : 20c',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.local_shipping),
                      const Text(
                        '  Kho Dow - ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const Text(
                        '  Giao hàng ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        '  Kho Dow',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Thời gian : 24/3/2023 lúc 11 giờ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Nhiệt độ : 16c',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                  ),
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Hàng hóa")),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Chứng từ")),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: () {}, child: const Icon(Icons.call)),
              ],
            ),
            const Center(
              child: Text(
                'Lộ trình',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
