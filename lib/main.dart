import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:e_commerce_app/routes.dart';
import 'package:e_commerce_app/view/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main (){
  runApp(EcommerceApp());
}
class EcommerceApp extends StatelessWidget{
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'playfair',
        textTheme: TextTheme(
          headlineLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'cairo',
                  fontSize: 22,
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
      home: OnBoarding(),
      routes: routes,
    );
  }

}