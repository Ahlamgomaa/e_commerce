
import 'package:e_commerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LocalController extends GetxController{
  Locale? language;
  MyServices myServices=Get.find();
  changelang (String codelan){
    Locale locale=Locale(codelan);
     myServices.sharedPreferences.setString('lang', codelan);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang =myServices.sharedPreferences.getString('lang');
     if (sharedPrefLang=='ar'){
       language=Locale('ar'); 
     }else if (sharedPrefLang=='en'){
       language=Locale('en');
     }else{
        language=Locale(Get.deviceLocale!.languageCode);
     }
    super.onInit();
  
     
     }
}