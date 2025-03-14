
import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  late TextEditingController email;

  checkemail();
  goToVerifyCode();
}

class CheckEmailControllerImp extends CheckEmailController {
  @override
  checkemail() {}
  @override
  goToVerifyCode() {
   Get.offNamed(Routeapp.verifyCodeSignup);
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
