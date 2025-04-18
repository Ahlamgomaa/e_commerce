
import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;
   late TextEditingController confirmPassword;

  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  @override
  resetPassword() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      return 'Valid';
    } else {
      return 'Not Valid';
    }
  }
  @override
  goToSuccessResetPassword() {
   Get.offNamed(RouteApp.successResetPassword);
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
