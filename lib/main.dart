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
      home: OnBoarding(),
    );
  }

}