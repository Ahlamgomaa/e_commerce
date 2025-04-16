
import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  late TextEditingController email;

  checkemail();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  @override
  checkemail() {}
  @override
  goToVerifyCode() {
   Get.offNamed(RouteApp.verifyCode);
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
