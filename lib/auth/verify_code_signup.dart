
import 'package:e_commerce_app/controller/auth/verify_code_signup_controller.dart';
import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextbody.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextmedium.dart';
import 'package:e_commerce_app/view/widgets/auth/customtexttitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCodeSignup extends StatelessWidget {
  const VerifyCodeSignup({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignupControllerImp controller=Get.put(VerifyCodeSignupControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomtextTitle(number: 9),
        backgroundColor: ColorApp.backgroundColor,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 23),
        child: ListView(
          children: [
            // SizedBox(height: 25),
            Customtextmedium(number: 10),
            SizedBox(height: 10),
            CustomtextBody(number: 12),
            SizedBox(height: 30),

            OtpTextField(
              fieldWidth: 50,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: ColorApp.primaryColor,

              showFieldAsBox: true,

              onCodeChanged: (String code) {},

              onSubmit: (String verificationCode) {
                controller.goToSuccessSignUp();
              }, // end onSubmit
            ),

            SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
