


import 'package:eproject/app/base/base_controller.dart';
import 'package:eproject/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends BaseController {
  Rx<bool> isLoading = false.obs;

  String jwtToken = "";
  Rx<bool> hasInternet = false.obs;
  Rx<String> validateErrEmail = "".obs;
  Rx<String> validateErrPassword = "".obs;
  // late TextEditingController emailController, passwordController;
  // Rx<String> email = "".obs;
  // Rx<String> password = "".obs;
  // Rx<bool> checkpassword = true.obs;
  // late StreamSubscription streamConnect;


  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;
  var email = '';
  var password = '';
  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  // String? validateEmail(String value) {
  //   if (!GetUtils.isEmail(value)) {
  //     return "Provide valid Email";
  //   }
  //   return null;
  // }

  // String? validatePassword(String value) {
  //   if (value.length < 6) {
  //     return "Password must be of 6 characters";
  //   }
  //   return null;
  // }


   login() async {
    isLoading(true);
  

          Get.offAllNamed(Routes.HOME);
          Get.snackbar(
            "Thông báo", "Thành công",
            // LocaleKeys.common_notification_title.tr,
            // LocaleKeys.common_sign_in_success.tr,
            icon: const Icon(Icons.person, color: Colors.white),
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.green,
            borderRadius: 20,
            margin: const EdgeInsets.all(15),
            colorText: Colors.white,
            duration: const Duration(seconds: 5),
            isDismissible: true,
            dismissDirection: DismissDirection.horizontal,
            forwardAnimationCurve: Curves.easeOutBack,
          );
        } 
         // void onBackLoginPage() {
  //   email("");
  //   password("");
  //   validateErrEmail("");
  //   validateErrPassword("");
  //   emailController.text = "";
  //   passwordController.text = "";
  // }

  // validateEmail(String value) {
  //   if (!GetUtils.isEmail(value)) {
  //     validateErrEmail.value = "Provide valid Email";
  //   } else {
  //     validateErrEmail.value = "";
  //   }
  // }

  // validatePassword(String value) {
  //   if (value.length < 8) {
  //     validateErrPassword.value = "Password must be of 8 characters";
  //   } else {
  //     validateErrPassword.value = "";
  //   }
  // }

  // setValueEmail(String? value) {
  //   if (value != null) {
  //     validateEmail(value);
  //     email.value = value;
  //   }
  // }

  // setValuePassword(String? value) {
  //   if (value != null) {
  //     validatePassword(value);
  //     password.value = value;
  //   }
  // }

      }
   

