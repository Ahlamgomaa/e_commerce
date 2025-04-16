import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController confirmpassword;

  signup();

  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  goToSignIn() {
    Get.offNamed(RouteApp.login);
  }

  @override
  signup() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.offNamed(RouteApp.verifyCodeSignup);
      //automatically delete with using get pages
      // Get.delete<SignUpControllerImp>();
    } else {
      return 'Not Valid';
    }
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
