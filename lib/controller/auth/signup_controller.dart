import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../core/class/statusRequest.dart';
import '../../core/function/handling_data.dart';
import '../../data/dataSource/remote/auth/signUp.dart';

abstract class SignUpController extends GetxController {
  signup();

  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  bool isShowPassword = true;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController confirmPassword;
  late StatusRequest statusRequest;
  SignupData signupData = SignupData(Get.find());
  List data = [];

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  goToSignIn() {
    Get.offNamed(RouteApp.login);
  }

  @override
  signup() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      var response = await signupData.postData(
        username.text,
        email.text,
        password.text,
        phone.text,
      );

      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        if (response['status'] == 'success') {
          data.addAll(response['data']);
          Get.offNamed(RouteApp.verifyCodeSignup);
        } else {
          Get.defaultDialog(
            title: "Warning",
            middleText: "Phone number or Email already exist",
          );
          statusRequest = StatusRequest.failure;
        }

        @override
        void onInit() {
          email = TextEditingController();
          password = TextEditingController();
          username = TextEditingController();
          phone = TextEditingController();
          confirmPassword = TextEditingController();
          super.onInit();
        }

        @override
        void dispose() {
          email.dispose();
          password.dispose();
          username.dispose();
          phone.dispose();
          confirmPassword.dispose();
          super.dispose();
        }
      }
    }
  }
}
