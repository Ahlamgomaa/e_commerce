import 'package:e_commerce_app/controller/auth/forget_password_controller.dart';

import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:e_commerce_app/view/widgets/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextbody.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextformfield.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextmedium.dart';

import 'package:e_commerce_app/view/widgets/auth/customtexttitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/function/valid_input.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(
      ForgetPasswordControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomtextTitle(number: 7),
        backgroundColor: ColorApp.backgroundColor,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 23),
        child: ListView(
          children: [
            // SizedBox(height: 25),
            Customtextmedium(number: 8),
            SizedBox(height: 10),
            CustomtextBody(number: 11),
            SizedBox(height: 30),

            Customformfield(
              valid: (val) {
                return validInput(val!, 5, 100, "email");
              },
              mycontroller: controller.email,
              hintText: 'Enter Your Email ',
              labelText: 'Email',
              icon: Icons.email_outlined,
              isNumber: false, obscureText: false,
            ),

            SizedBox(height: 10),
            CustomButtonAuth(
              text: "Check ",
              onPressed: () {
                controller.goToVerifyCode();
              },
            ),
            SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
