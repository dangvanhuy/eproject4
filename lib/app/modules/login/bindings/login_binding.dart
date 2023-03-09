import 'package:eproject/app/base/base_bindings.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends BaseBindings {
  @override
  void injectService() {
     Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    // Get.put(LoginController(), permanent: true);
  }
}
