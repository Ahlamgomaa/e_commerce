import 'package:e_commerce_app/controller/auth/signup_controller.dart';
import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:e_commerce_app/view/widgets/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextbody.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextformfield.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextmedium.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextsignuporsinin.dart';
import 'package:e_commerce_app/view/widgets/auth/customtexttitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/function/alert_exit_app.dart';
import '../core/function/valid_input.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomtextTitle(number: 5),
        backgroundColor: ColorApp.backgroundColor,
        elevation: 0,
      ),
      body: GetBuilder<SignUpControllerImp>(
        builder:
            (controller) => WillPopScope(
              onWillPop: alertExitApp,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 23),
                child: Form(
                  key: controller.formState,
                  child: ListView(
                    children: [
                      // SizedBox(height: 25),
                      Customtextmedium(number: 2),
                      SizedBox(height: 10),
                      CustomtextBody(number: 6),
                      SizedBox(height: 25),
                      Customformfield(
                        valid: (val) {
                          return validInput(val!, 5, 10, "username");
                        },
                        mycontroller: controller.username,
                        hintText: 'Enter Your UserName ',
                        labelText: 'UserName',
                        icon: Icons.person,
                        isNumber: false,
                      ),

                      Customformfield(
                        valid: (val) {
                          return validInput(val!, 5, 100, "email");
                        },
                        mycontroller: controller.email,
                        hintText: 'Enter Your Email ',
                        labelText: 'Email',
                        icon: Icons.email_outlined,
                        isNumber: false,
                      ),
                      Customformfield(
                        valid: (val) {
                          return validInput(val!, 11, 11, "phone");
                        },
                        mycontroller: controller.phone,
                        hintText: 'Enter Your Phone ',
                        labelText: 'Phone',
                        icon: Icons.phone_android_outlined,
                        isNumber: true,
                      ),

                      GetBuilder<SignUpControllerImp>(
                        builder:(controller)=>
                        Customformfield(
                          valid: (val) {
                            return validInput(val!, 10, 15, "password");
                          },
                          onTapIcon: (){
                            controller.showPassword();
                          }
                          ,
                          mycontroller: controller.password,
                          hintText: 'Enter Your Password',
                          labelText: 'Password',
                          icon: Icons.lock_outline,
                          isNumber: false, obscureText: controller.isShowPassword,
                        ),
                      ),
                      GetBuilder<SignUpControllerImp>(
                        builder:(controller)=>
                         Customformfield(
                          valid: (val) {
                            return validInput(val!, 10, 15, "password");
                          },
                          onTapIcon: (){
                            controller.showPassword();
                          },
                          mycontroller: controller.confirmPassword,
                          hintText: 'Enter Your Password',
                          labelText: 'Confirm Password',
                          icon: Icons.lock_outline,
                          isNumber: false, obscureText: controller.isShowPassword,
                        ),
                      ),

                      SizedBox(height: 10),
                      CustomButtonAuth(
                        text: "Sign Up",
                        onPressed: () {
                          controller.signup();
                        },
                      ),
                      SizedBox(height: 30),
                      Customtextsignuporsinin(
                        text1: r"Your have an account? ",
                        text2: 'Sign In',
                        onTap: () {
                          controller.goToSignIn();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
