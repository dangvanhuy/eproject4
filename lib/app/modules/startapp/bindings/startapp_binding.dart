import 'package:eproject/app/base/base_bindings.dart';
import 'package:get/get.dart';

import '../controllers/startapp_controller.dart';

class StartappBinding extends BaseBindings {
  @override
  void injectService() {
     Get.lazyPut<StartappController>(
      () => StartappController(),
    );
  }
}
