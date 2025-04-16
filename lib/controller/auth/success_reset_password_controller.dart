import 'package:get/get.dart';

import '../../core/constant/routeapp.dart';

abstract class SuccessResetPasswordController extends  GetxController{
  goToLogin();

}
class  SuccessResetPasswordControllerImp  extends SuccessResetPasswordController{
  @override
  goToLogin() {
   Get.offAllNamed(RouteApp.login);
  }
}