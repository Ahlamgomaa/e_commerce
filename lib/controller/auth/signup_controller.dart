import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController confirmpassword;

  signup();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  @override
  goToSignIn() {
      Get.offNamed(Routeapp.login);
  }

  @override
  signup() {
  
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    confirmpassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    confirmpassword.dispose();
    super.dispose();
  }
}
