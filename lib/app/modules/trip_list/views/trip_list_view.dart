import 'package:eproject/app/base/base_view.dart';
import 'package:eproject/app/components/custom_appbar_navbar.dart';
import 'package:eproject/app/modules/home/views/home_view.dart';
import 'package:eproject/app/modules/maintabbar/views/maintabbar_view.dart';
import 'package:eproject/app/modules/truckmonitoring/views/truckmonitoring_view.dart';
import 'package:eproject/app/resources/reponsize_utils.dart';
import 'package:eproject/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/trip_list_controller.dart';

class TripListView extends BaseView<TripListController> {
  const TripListView({Key? key}) : super(key: key);
  @override
  Widget buildView(BuildContext context) {
    final TripListController tripListController = Get.put(TripListController());
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu_rounded),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text('Chuyến'),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 218, 218),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.clear),
                    ),
                    hintText: "....",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                //to clip overflown positioned containers.
                borderRadius: BorderRadius.circular(30),
                //if we set border radius on container, the overflown content get displayed at corner.
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      //Stack helps to overlap widgets
                      Positioned(
                          //positioned helps to position widget wherever we want.
                          top: -20,
                          left: -50, //position of the widget
                          child: Container(
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.orange.withOpacity(
                                      0.5) //background color with opacity
                                  ))),

                      Positioned(
                          left: -80,
                          top: -50,
                          child: Container(
                              height: 350,
                              width: 180,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.redAccent.withOpacity(0.5)))),

                      Positioned(
                        //main content container postition.
                        child: Container(
                          height: 350,
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Đang chạy",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "Mã: gedq8992",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  const Text(
                                    "Số xe: 99999hdw",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "Thông tin : Dow",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  const Text(
                                    "Thời gian : 24/3/2023",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "Loại hàng: Dầu",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  const Text(
                                    "Nhiệt độ : 20c",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "Không có chi phí phát sinh",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Get.offAllNamed(Routes.FLIGHT_DETAILS);
                                    },
                                    child: const Text("Chi tiết"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                //to clip overflown positioned containers.
                borderRadius: BorderRadius.circular(30),
                //if we set border radius on container, the overflown content get displayed at corner.
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      //Stack helps to overlap widgets
                      Positioned(
                          //positioned helps to position widget wherever we want.
                          top: -20,
                          left: -50, //position of the widget
                          child: Container(
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.orange.withOpacity(
                                      0.5) //background color with opacity
                                  ))),

                      Positioned(
                          left: -80,
                          top: -50,
                          child: Container(
                              height: 350,
                              width: 180,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green.withOpacity(0.5)))),

                      Positioned(
                        //main content container postition.
                        child: Container(
                          height: 350,
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Đã giao hàng",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "Mã: gedq8992",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  const Text(
                                    "Số xe: 99999hdw",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "Thông tin : Dow",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  const Text(
                                    "Thời gian : 24/3/2023",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "Loại hàng: Dầu",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  const Text(
                                    "Nhiệt độ : 10c",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "Có chi phí phát sinh",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Get.offAllNamed(Routes.FLIGHT_DETAILS);
                                    },
                                    child: const Text("Chi tiết"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
