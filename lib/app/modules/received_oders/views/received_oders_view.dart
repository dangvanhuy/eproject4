import 'package:eproject/app/base/base_view.dart';
import 'package:eproject/app/components/custom_appbar_navbar.dart';
import 'package:eproject/app/modules/command_driver/views/command_driver_view.dart';
import 'package:eproject/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/received_oders_controller.dart';

class ReceivedOdersView extends BaseView<ReceivedOdersController> {
  const ReceivedOdersView({Key? key}) : super(key: key);
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
        title: const Text('Đã nhận'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                Get.off(() => const CommandDriverView());
              }),
        ],
      ),
      body: Container(
        height: 350,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5, //spread radius
              blurRadius: 7, // blur radius
              offset: Offset(0, 2), // changes position of shadow
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
                          color: Colors.orange
                              .withOpacity(0.5) //background color with opacity
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
                      Text(
                        "Mã hàng: " "hvcdtfg7887",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Lộ trình",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.outbond),
                            Column(
                              children: [
                                Text(
                                  "Kho : Dow",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  "24/3/2023 vào lúc 8 giờ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.transit_enterexit_rounded),
                            Column(
                              children: [
                                Text(
                                  "Kho : ?",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  "25/3/2023 vào lúc 1 giờ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Số lượng",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Số tấn",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Số khối",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "0",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "2",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "0",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Số đơn",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Khách",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "1",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "?",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text("Hủy"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.back();
                              // Get.off(() => ReceivedOdersView());
                              Get.offAllNamed(Routes.ODER_DETAILS);
                            },
                            child: Text("Chi tiết"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
