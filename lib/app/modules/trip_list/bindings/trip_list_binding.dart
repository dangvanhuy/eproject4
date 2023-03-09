import 'package:eproject/app/base/base_bindings.dart';
import 'package:get/get.dart';

import '../controllers/trip_list_controller.dart';

class TripListBinding extends BaseBindings {  
  @override
  void injectService() {
    Get.lazyPut<TripListController>(
      () => TripListController(),
    );
  }
}
