import 'package:e_commerce_app/controller/auth/signin_controller.dart';
import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:e_commerce_app/core/function/valid_input.dart';

import 'package:e_commerce_app/view/widgets/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextbody.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextformfield.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextmedium.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextsignuporsinin.dart';

import 'package:e_commerce_app/view/widgets/auth/customtexttitle.dart';
import 'package:e_commerce_app/view/widgets/auth/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/function/alert_exit_app.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    SigninControllerImp controller = Get.put(SigninControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomtextTitle(number: 3),
        backgroundColor: Colorapp.backgroundcolor,
        elevation: 0,
      ),

      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 23),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                Logo(),
                // SizedBox(height: 25),
                Customtextmedium(number: 2),
                SizedBox(height: 10),
                CustomtextBody(number: 4),
                SizedBox(height: 30),
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

                GetBuilder<SigninControllerImp>(
                  builder:(controller)=>
                  Customformfield(
                    valid: (val) {
                      return validInput(val!, 10, 15, "password");
                    },
                    onTapIcon: (){
                      controller.showPassword();
                    },
                    mycontroller: controller.password,
                    hintText: 'Enter Your Password',
                    labelText: 'Password',
                    icon: Icons.lock_outline,
                    isNumber: false,
                    obscureText: controller.isShowPassword,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.goToForgetPassword();
                  },
                  child: Text("Forget Password?", textAlign: TextAlign.end),
                ),
                SizedBox(height: 20),
                CustomButtonAuth(
                  text: "Sign In",
                  onPressed: () {
                    controller.login();
                  },
                ),
                SizedBox(height: 35),
                Customtextsignuporsinin(
                  text1: r"Don't have an account? ",
                  text2: 'Sign Up',
                  onTap: () {
                    controller.goToSignUp();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
