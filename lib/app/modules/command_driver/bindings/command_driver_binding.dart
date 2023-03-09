import 'package:eproject/app/base/base_bindings.dart';
import 'package:get/get.dart';

import '../controllers/command_driver_controller.dart';

class CommandDriverBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<CommandDriverController>(
      () => CommandDriverController(),
    );
  }
}
