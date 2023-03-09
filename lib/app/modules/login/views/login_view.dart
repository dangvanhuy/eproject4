import 'package:eproject/app/resources/reponsize_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/base_view.dart';
import '../controllers/login_controller.dart';

class LoginView extends BaseView<LoginController> {
  const LoginView({super.key});

  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 190, left: 16, right: 26),
            width: context.width,
            height: context.height,
            child: SingleChildScrollView(
              child: Form(
                key: controller.loginFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/image/dow.png",
                    ),
                    SizedBox(height: UtilsReponsive.height(context, 50)),
                    const Text(
                      "Chào mừng đến với Dow",
                      style: TextStyle(fontSize: 20, color: Colors.black87),
                    ),
                    SizedBox(height: UtilsReponsive.height(context, 20)),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Email",
                        prefixIcon: const Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.emailController,
                      onSaved: (value) {
                        controller.email = value!;
                      },
                      validator: (value) {
                        // return controller.validateEmail(value!);
                      },
                    ),
                    SizedBox(height: UtilsReponsive.height(context, 10)),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.lock),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      controller: controller.passwordController,
                      onSaved: (value) {
                        controller.password = value!;
                      },
                      validator: (value) {
                        // return controller.validatePassword(value!);
                      },
                    ),
                    SizedBox(height: UtilsReponsive.height(context, 16)),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints.tightFor(width: context.width),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              Colors.deepPurpleAccent),
                          padding:
                              MaterialStateProperty.all(const EdgeInsets.all(14)),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        onPressed: () {
                          controller.login();
                        },
                      ),
                    ),
                    SizedBox(height: UtilsReponsive.height(context, 16)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
