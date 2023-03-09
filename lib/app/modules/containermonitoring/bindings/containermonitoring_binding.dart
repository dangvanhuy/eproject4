import 'package:eproject/app/base/base_bindings.dart';
import 'package:get/get.dart';

import '../controllers/containermonitoring_controller.dart';

class ContainermonitoringBinding extends BaseBindings {
  @override
  void injectService() {
      Get.lazyPut<ContainermonitoringController>(
      () => ContainermonitoringController(),
    );
  }
}
