import 'package:eproject/app/base/base_view.dart';
import 'package:eproject/app/components/custom_appbar_navbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/running_driver_controller.dart';

class RunningDriverView extends BaseView<RunningDriverController> {
  const RunningDriverView({Key? key}) : super(key: key);
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
        title: const Text('Đang chạy'),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 150,
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
                                color: Colors.orange.withOpacity(
                                    0.5) //background color with opacity
                                ))),

                    Positioned(
                        left: -80,
                        top: -50,
                        child: Container(
                            height: 250,
                            width: 180,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.redAccent.withOpacity(0.5)))),

                    Positioned(
                      //main content container postition.
                      child: Container(
                        height: 250,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Kho Dow - Lấy hàng",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "    24/3/2023 vào lúc 8 giờ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Trạng thái : Đang chạy",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
            height: 150,
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
                                color: Colors.orange.withOpacity(
                                    0.5) //background color with opacity
                                ))),

                    Positioned(
                        left: -80,
                        top: -50,
                        child: Container(
                            height: 250,
                            width: 180,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.redAccent.withOpacity(0.5)))),

                    Positioned(
                      //main content container postition.
                      child: Container(
                        height: 250,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Kho Dow - Lấy hàng",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "    24/3/2023 vào lúc 8 giờ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Trạng thái : chờ lấy hàng",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
    );
  }
}
