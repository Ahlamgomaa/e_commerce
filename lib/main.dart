import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:e_commerce_app/core/localization/changelocal.dart';
import 'package:e_commerce_app/core/localization/translation.dart';
import 'package:e_commerce_app/core/services/services.dart';
import 'package:e_commerce_app/routes.dart';
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
      theme: ThemeData(
        fontFamily: 'playfair',
        textTheme: TextTheme(
          headlineLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'cairo',
                  fontSize: 22,
                  color: Colorapp.black,
                ),
                headlineMedium: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'cairo',
                  fontSize: 30,
                  color: Colorapp.black,
                ),
          bodySmall:TextStyle(
                    height: 1.5,
                    color: Colorapp.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
        ),
      ),
      home: Language(),
      routes: routes,
    );
  }

}