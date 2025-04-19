import 'package:e_commerce_app/controller/onboardingcontroller.dart';
import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:e_commerce_app/data/dataSource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Customdotcontroller extends StatelessWidget {
  const Customdotcontroller({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Onboardingcontrollerimp>(
      builder:
          (controller) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                onboardingList.length,
                (i) => AnimatedContainer(
                  margin: EdgeInsets.only(right: 5),
                  duration: Duration(milliseconds: 150),
                  width: controller.currentpage == i ? 20 : 6,  
                  height: 6,
                  decoration: BoxDecoration(
                    color: ColorApp.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
