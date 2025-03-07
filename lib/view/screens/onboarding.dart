import 'package:e_commerce_app/view/widgets/onboarding/custombutton.dart';
import 'package:e_commerce_app/view/widgets/onboarding/customdotcontroller.dart';
import 'package:e_commerce_app/view/widgets/onboarding/custompageview.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3, child: Custompageview()),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Customdotcontroller(),
                  Spacer(flex: 2),
                  Custombutton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
