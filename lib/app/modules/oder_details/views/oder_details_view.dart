import 'package:eproject/app/base/base_view.dart';
import 'package:eproject/app/components/custom_tabview.dart';
import 'package:eproject/app/modules/command_driver/views/command_driver_view.dart';
import 'package:eproject/app/modules/received_oders/views/received_oders_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/oder_details_controller.dart';

class OderDetailsView extends BaseView<OderDetailsController> {
  const OderDetailsView({Key? key}) : super(key: key);
  @override
  Widget buildView(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.off(() => const ReceivedOdersView());
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Text('Chi tiết đơn hàng'),
          centerTitle: true,
          actions: [
            IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  Get.off(() => const CommandDriverView());
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
                      text: 'Đơn hàng',
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Nhận hàng tại : Dow',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    'Quận 10',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Hàng hóa ',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        'Kế hoạch',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        'Đơn vị',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Dầu',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        'Tấn',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Giao hàng tại Dow',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Đường 10, số 10, Hồ Chí Minh',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Hàng hóa ',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        'Kế hoạch',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        'Đơn vị',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Dầu',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        'Tấn',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Ghi chú',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      )),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Bắt đầu"),
                  ),
                ],
              ),
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
