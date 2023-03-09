import 'package:eproject/app/modules/login/views/login_view.dart';
import 'package:eproject/app/resources/reponsize_utils.dart';
import 'package:eproject/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class SplashStart extends StatefulWidget {
  const SplashStart({Key? key}) : super(key: key);

  @override
  State<SplashStart> createState() => _SplashStartState();
}

class _SplashStartState extends State<SplashStart> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Get.offAllNamed(Routes.LOGIN);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/image/dow.png"),
              width: 350,
            ),
            SizedBox(
              height: UtilsReponsive.height(context, 50),
            ),
            const SpinKitSquareCircle(
              color: Colors.red,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
