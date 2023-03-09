import 'package:eproject/app/base/base_bindings.dart';
import 'package:get/get.dart';

import '../controllers/tab_driver_controller.dart';

class TabDriverBinding extends BaseBindings {

  @override
  void injectService() {
     Get.lazyPut<TabDriverController>(
      () => TabDriverController(),
    );
  }
}
