import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class SigninController extends GetxController {
  late TextEditingController email;
  late TextEditingController password; 
  login();
  goToSignUp();
  goToForgetPassword();
  
}
class SigninControllerImp extends SigninController{
  @override
  login() { }
  
  @override
  goToSignUp() {
    Get.offNamed(Routeapp.signUp);   
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
   Get.offNamed(Routeapp.forgetPassword);
  }
}