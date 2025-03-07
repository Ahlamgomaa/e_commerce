import 'package:e_commerce_app/controller/onboardingcontroller.dart';
import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custombutton extends GetView<Onboardingcontrollerimp> {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 45),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      height: 45,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 100),
        onPressed: () {
          controller.next();
        },
        color: Colorapp.primaryColor,
        textColor: Colors.white,
        child: Text("Continue"),
      ),
    );
  }
}
