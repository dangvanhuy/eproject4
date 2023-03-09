import 'package:eproject/app/base/base_bindings.dart';
import 'package:get/get.dart';

import '../controllers/flight_details_controller.dart';

class FlightDetailsBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<FlightDetailsController>(
      () => FlightDetailsController(),
    );
  }
}
