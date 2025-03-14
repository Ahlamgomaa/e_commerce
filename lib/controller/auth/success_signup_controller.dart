import 'package:get/get.dart';

import '../../core/constant/routeapp.dart';

abstract class SucessSignUpController extends  GetxController{
  goToLogin();
}
class SucessSignUpControllerImp extends SucessSignUpController{
  @override
  goToLogin() {
    Get.offAllNamed(Routeapp.login);
  }
}
