import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:e_commerce_app/core/localization/changelocal.dart';
import 'package:e_commerce_app/core/localization/translation.dart';
import 'package:e_commerce_app/core/services/services.dart';
import 'package:e_commerce_app/routes.dart';
// import 'package:e_commerce_app/test.dart';
import 'package:e_commerce_app/view/screens/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main () async{
  WidgetsFlutterBinding.ensureInitialized();
   await initialServices();
  runApp(EcommerceApp());
}
class EcommerceApp extends StatelessWidget{
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller=Get.put(LocalController()); 
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      theme:controller.themeapp,
      home: Language(),
      routes: routes,
    );
  }

}