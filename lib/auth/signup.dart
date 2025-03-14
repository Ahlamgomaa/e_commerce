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

class SignUp extends StatelessWidget
{
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
   SignUpControllerImp controller= Get.put(SignUpControllerImp());
  return Scaffold(
    appBar: AppBar(
      centerTitle: true ,
      title: CustomtextTitle(number: 5),
      backgroundColor: Colorapp.backgroundcolor,
      elevation: 0,
    ),
    body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 23),
        child: ListView(
          children: [
            
            // SizedBox(height: 25),
            Customtextmedium(number: 2),
            SizedBox(height: 10),
            CustomtextBody(number: 6),
            SizedBox(height: 30),
            Customformfield(
              mycontroller: controller.username,
              hintText: 'Enter Your UserName ',
              labelText: 'UserName',
              icon: Icons.person,
            ),

            Customformfield(
              mycontroller: controller.email,
              hintText: 'Enter Your Email ',
              labelText: 'Email',
              icon: Icons.email_outlined,
            ),
            Customformfield(
              mycontroller: controller.phone, 
              hintText: 'Enter Your Phone ',
              labelText: 'Phone',
              icon: Icons.phone_android_outlined,
            ),


            Customformfield(
              mycontroller: controller.password,  
              hintText: 'Enter Your Password',
              labelText: 'Password',
              icon: Icons.lock_outline,
            ),
            Customformfield(
              mycontroller: controller.confirmpassword, 
              hintText: 'Enter Your Password',
              labelText: 'Confirm Password',
              icon: Icons.lock_outline,
            ),
            
            SizedBox(height: 10),
            CustomButtonAuth(text: "Sign Up", onPressed: () {
              controller.signup();
            }),
            SizedBox(height: 35),
            Customtextsignuporsinin(
              text1: r"Your have an account? ",
              text2: 'Sign In',
              onTap: (){
                
                controller.goToSignIn();
              },
            ),
          ],
        ),
      ),
  );
  }
  
}