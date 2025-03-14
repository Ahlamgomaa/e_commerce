
import 'package:e_commerce_app/core/constant/routeapp.dart';

import 'package:get/get.dart';

abstract class VerifyCodeSignupController extends GetxController {

  late String verifyCode;
  checkcode();
  goToSuccessSignUp();
}

class VerifyCodeSignupControllerImp extends VerifyCodeSignupController {


  @override
  void onInit() {


    super.onInit();
  }



  @override
  checkcode() {

  }

  @override
  goToSuccessSignUp() {
    Get.offNamed(Routeapp.successSignUp);

  }
}
