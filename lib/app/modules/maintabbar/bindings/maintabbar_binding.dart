import 'package:eproject/app/base/base_bindings.dart';
import 'package:get/get.dart';

import '../controllers/maintabbar_controller.dart';

class MaintabbarBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<MaintabbarController>(
      () => MaintabbarController(),
    );
  }
}
