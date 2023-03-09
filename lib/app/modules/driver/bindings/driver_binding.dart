import 'package:eproject/app/base/base_bindings.dart';
import 'package:get/get.dart';

import '../controllers/driver_controller.dart';

class DriverBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<DriverController>(
      () => DriverController(),
    );
  }
}
