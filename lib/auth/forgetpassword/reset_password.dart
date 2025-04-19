import 'package:e_commerce_app/controller/auth/reset_password_controller.dart';
import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:e_commerce_app/view/widgets/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextbody.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextformfield.dart';

import 'package:e_commerce_app/view/widgets/auth/customtextmedium.dart';

import 'package:e_commerce_app/view/widgets/auth/customtexttitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/function/valid_input.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(
      ResetPasswordControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomtextTitle(number: 13),
        backgroundColor: ColorApp.backgroundColor,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 23),
        child: ListView(
          children: [
            // SizedBox(height: 25),
            Customtextmedium(number: 14),
            SizedBox(height: 10),
            CustomtextBody(number: 15),
            SizedBox(height: 30),

            Customformfield(
              valid: (val) {
                return validInput(val!, 10, 15, "password");
              },
              mycontroller: controller.password,
              hintText: 'Enter Your Password  ',
              labelText: 'Password',
              icon: Icons.lock_outlined,
              isNumber: false, obscureText: true,
            ),
            Customformfield(
              valid: (val) {
                return validInput(val!, 10, 15, "password");
              },
              mycontroller: controller.confirmPassword,
              hintText: 'Re-Enter Your Password ',
              labelText: 'Confirm Password',
              icon: Icons.lock_outlined,
              isNumber: false, obscureText: true,
            ),
            SizedBox(height: 10),
            CustomButtonAuth(
              text: "Save",
              onPressed: () {
                controller.goToSuccessResetPassword();
              },
            ),
            SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
