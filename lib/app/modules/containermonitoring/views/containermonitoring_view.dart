import 'package:eproject/app/base/base_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/containermonitoring_controller.dart';

class ContainermonitoringView extends BaseView<ContainermonitoringController> {
  const ContainermonitoringView({Key? key}) : super(key: key);
  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContainermonitoringView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ContainermonitoringView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
