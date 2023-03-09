import 'package:eproject/app/base/base_bindings.dart';
import 'package:get/get.dart';

import '../controllers/oder_details_controller.dart';

class OderDetailsBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<OderDetailsController>(
      () => OderDetailsController(),
    );
  }
}
