
import 'package:e_commerce_app/core/constant/routeapp.dart';

import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
 
late String verifyCode; 
  checkcode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {


  @override
  void onInit() {
   

    super.onInit();
  }


  
  @override
  checkcode() {
   
  }
  
  @override
  goToResetPassword() {
    Get.offNamed(RouteApp.resetPassword);
    
  }
}
