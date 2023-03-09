import 'package:eproject/app/base/base_bindings.dart';
import 'package:get/get.dart';

import '../controllers/running_driver_controller.dart';

class RunningDriverBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<RunningDriverController>(
      () => RunningDriverController(),
    );
  }
}
