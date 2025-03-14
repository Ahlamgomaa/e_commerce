
import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  late TextEditingController password;
   late TextEditingController confirmPassword;

  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  @override
  resetPassword() {}
  @override
  goToSuccessResetPassword() {
   Get.offNamed(Routeapp.successResetPassword);
  }

  @override
  void onInit() {
    password = TextEditingController();
    confirmPassword=TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    confirmPassword.dispose();

    super.dispose();
  }
}
