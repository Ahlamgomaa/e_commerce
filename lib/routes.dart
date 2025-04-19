import 'package:e_commerce_app/auth/forgetpassword/forgetpassword.dart';
import 'package:e_commerce_app/auth/login.dart';
import 'package:e_commerce_app/auth/forgetpassword/reset_password.dart';
import 'package:e_commerce_app/auth/signup.dart';
import 'package:e_commerce_app/auth/forgetpassword/success_reset_password.dart';
import 'package:e_commerce_app/auth/success_signup.dart';
import 'package:e_commerce_app/auth/forgetpassword/veryfiy_code.dart';
import 'package:e_commerce_app/core/constant/routeapp.dart';

// import 'package:e_commerce_app/test_view.dart';
import 'package:e_commerce_app/view/screens/language.dart';
import 'package:e_commerce_app/view/screens/onboarding.dart';

import 'package:get/get.dart';

import 'auth/verify_code_signup.dart';
import 'core/MiddleWare/middleware.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => Language(), middlewares: [MiddleWare()]),
  // GetPage(name: "/", page: () => TestView()),
  GetPage(name: RouteApp.onBoarding, page: () => OnBoarding()),
  GetPage(name: RouteApp.signUp, page: () => SignUp()),
  GetPage(name: RouteApp.login, page: () => Login()),
  GetPage(name: RouteApp.forgetPassword, page: () => Forgetpassword()),
  GetPage(name: RouteApp.verifyCode, page: () => VeryfiyCode()),
  GetPage(name: RouteApp.resetPassword, page: () => ResetPassword()),
  GetPage(
    name: RouteApp.successResetPassword,
    page: () => SuccessResetPassword(),
  ),
  GetPage(name: RouteApp.successSignUp, page: () => SuccessSignup()),
  GetPage(name: RouteApp.verifyCodeSignup, page: () => VerifyCodeSignup()),
];
