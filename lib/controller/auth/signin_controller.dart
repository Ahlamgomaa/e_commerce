import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class SigninController extends GetxController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  login();

  goToSignUp();

  goToForgetPassword();
}

class SigninControllerImp extends SigninController {

  bool isShowPassword=true;
  showPassword(){
    isShowPassword=isShowPassword==true?false:true;
    update();
  }
  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      return 'Valid';
    } else {
      return 'Not Valid';
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(RouteApp.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.offNamed(RouteApp.forgetPassword);
  }
}
