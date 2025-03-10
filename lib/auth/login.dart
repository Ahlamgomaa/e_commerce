import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:e_commerce_app/view/widgets/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextbody.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextformfield.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextmedium.dart';
import 'package:e_commerce_app/view/widgets/auth/customtexttitle.dart';
import 'package:e_commerce_app/view/widgets/auth/logo.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomtextTitle(number: 3),
        backgroundColor: Colorapp.backgroundcolor,
        elevation: 0,
      ),

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 23),
        child: ListView(
          children: [
            Logo(),
            // SizedBox(height: 25),
            Customtextmedium(number: 2),
            SizedBox(height: 10),
            CustomtextBody(number: 4),
            SizedBox(height: 30),
            Customformfield(
              hintText: 'Enter Your Email ',
              labelText: 'Email',
              icon: Icons.email_outlined,
            ),

            Customformfield(
              hintText: 'Enter Your Password',
              labelText: 'Password',
              icon: Icons.lock_outline,
            ),
            Text("Forget Password?", textAlign: TextAlign.end),
            SizedBox(height: 20),
            CustomButtonAuth(text: "Sign In", onPressed: () {}),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Text(r"Don't have an account? "),
                InkWell(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colorapp.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
