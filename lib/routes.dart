import 'package:e_commerce_app/auth/login.dart';
import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Routeapp.login: (context) => Login(),
};
