import 'package:eproject/app/base/base_controller.dart';
import 'package:get/get.dart';
class StartappController extends BaseController {
  final count = 0.obs;
  @override
  void onInit() async {
    // await getModelLoginLocal();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  // getModelLoginLocal() async {
  //   await Future.delayed(Duration(seconds: 2), () async {
  //     Get.offNamed(Routes.LOGIN);
  //   });
  // }
}
