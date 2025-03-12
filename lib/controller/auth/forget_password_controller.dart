
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
