import 'package:e_commerce_app/auth/forgetpassword/forgetpassword.dart';
import 'package:e_commerce_app/auth/login.dart';
import 'package:e_commerce_app/auth/forgetpassword/reset_password.dart';
import 'package:e_commerce_app/auth/signup.dart';
import 'package:e_commerce_app/auth/forgetpassword/success_reset_password.dart';
import 'package:e_commerce_app/auth/success_signup.dart';
import 'package:e_commerce_app/auth/forgetpassword/veryfiy_code.dart';
import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:e_commerce_app/view/screens/onboarding.dart';
import 'package:flutter/material.dart';

import 'auth/verify_code_signup.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //onboarding 
  Routeapp.onBoarding: (context) => OnBoarding(),
  //Auth
  Routeapp.login: (context) => Login(),
  Routeapp.signUp: (context) => SignUp(),
  Routeapp.forgetPassword: (context) => Forgetpassword(),
  Routeapp.verifyCode:(context)=>VeryfiyCode(),
  Routeapp.resetPassword:(context)=>ResetPassword(),
  Routeapp.successResetPassword:(context)=>SuccessResetPassword(),
  Routeapp.successSignUp:(context)=>SuccessSignup(),
  // Routeapp.checkEmail:(context)=>CheckEmail(),
  Routeapp.verifyCodeSignup:(context)=>VerifyCodeSignup(),

};
