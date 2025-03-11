import 'package:e_commerce_app/auth/login.dart';
import 'package:e_commerce_app/auth/signup.dart';
import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:e_commerce_app/view/screens/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Routeapp.login: (context) => Login(),
  Routeapp.onBoarding: (context) => OnBoarding(),
  Routeapp.signUp: (context) => SignUp(),
};
