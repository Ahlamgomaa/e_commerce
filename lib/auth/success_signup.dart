import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:e_commerce_app/view/widgets/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/auth/success_signup_controller.dart';

import '../view/widgets/auth/customtexttitle.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    SucessSignUpControllerImp controller = Get.put(SucessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomtextTitle(number: 18),
        backgroundColor: Colorapp.backgroundcolor,
        elevation: 0,
      ),

      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 150,
                color: Colorapp.primaryColor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "20".tr,
              style: Theme.of(
                context,
              ).textTheme.headlineLarge!.copyWith(fontSize: 30),
            ),
            SizedBox(height: 20),
            Text(
              "21".tr,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtonAuth(
                text: "Go To Login",
                onPressed: () {
                  controller.goToLogin();
                },
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
