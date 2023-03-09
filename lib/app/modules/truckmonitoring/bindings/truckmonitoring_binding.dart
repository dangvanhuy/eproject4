import 'package:eproject/app/base/base_bindings.dart';
import 'package:get/get.dart';

import '../controllers/truckmonitoring_controller.dart';

class TruckmonitoringBinding extends BaseBindings {  
  @override
  void injectService() {
    Get.lazyPut<TruckmonitoringController>(
      () => TruckmonitoringController(),
    );
  }
}
