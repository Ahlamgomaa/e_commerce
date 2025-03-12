import 'package:e_commerce_app/auth/forgetpassword.dart';
import 'package:e_commerce_app/auth/login.dart';
import 'package:e_commerce_app/auth/reset_password.dart';
import 'package:e_commerce_app/auth/signup.dart';
import 'package:e_commerce_app/auth/success_reset_password.dart';
import 'package:e_commerce_app/auth/success_signup.dart';
import 'package:e_commerce_app/auth/veryfiy_code.dart';
import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:e_commerce_app/view/screens/onboarding.dart';
import 'package:flutter/material.dart';

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
};
