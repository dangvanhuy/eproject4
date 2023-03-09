import 'package:eproject/app/base/base_bindings.dart';
import 'package:get/get.dart';

import '../controllers/received_oders_controller.dart';

class ReceivedOdersBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<ReceivedOdersController>(
      () => ReceivedOdersController(),
    );
  }
}
