import 'package:e_commerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/themeapp.dart';

class LocalController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  ThemeData themeapp=themeDataEnglish;
  changelang(String codelan) {
    Locale locale = Locale(codelan);
    myServices.sharedPreferences.setString('lang', codelan);
    themeapp=codelan=='ar' ?themeDataArabic:themeDataEnglish;
    Get.changeTheme(themeapp);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString('lang');
    if (sharedPrefLang == 'ar') {
      language = Locale('ar');
      themeapp=themeDataArabic;
    } else if (sharedPrefLang == 'en') {
      language = Locale('en');
      themeapp=themeDataEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      themeapp=themeDataEnglish;
    }
    super.onInit();
  }
}
