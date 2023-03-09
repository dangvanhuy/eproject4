import 'package:eproject/app/base/base_view.dart';
import 'package:eproject/app/modules/startapp/views/spansh.dart';
import 'package:flutter/material.dart';
import '../controllers/startapp_controller.dart';

class StartappView extends BaseView<StartappController> {
  const StartappView({Key? key}) : super(key: key);
  @override
  Widget buildView(BuildContext context) {
    return const SplashStart();
  }
}
