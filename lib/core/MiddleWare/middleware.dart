import 'package:e_commerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/routeapp.dart';

class MiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;
MyServices services=Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if(services.sharedPreferences.getString("Onboarding")=="1"){
     return  RouteSettings(name: RouteApp.login);
    }
  }
}
