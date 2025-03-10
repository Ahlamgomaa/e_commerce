import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '3'.tr,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: Colorapp.grey),
        ),
        backgroundColor: Colorapp.backgroundcolor,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 23),
        child: ListView(
          children: [
            SizedBox(height: 25),
            Text(
              "2".tr,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.copyWith(color: Colorapp.black),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "4".tr,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall!.copyWith(color: Colorapp.grey),
              ),
            ),
            SizedBox(height: 40),
            TextFormField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,

                contentPadding: EdgeInsets.symmetric(horizontal: 30),
                label: Text("Email", style: TextStyle(color: Colorapp.grey)),
                hintText: 'Enter Your Email',
                hintStyle: TextStyle(color: Colorapp.grey),
                suffixIcon: Icon(Icons.email_outlined, color: Colorapp.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                label: Text("Password", style: TextStyle(color: Colorapp.grey)),

                hintText: 'Enter Your Password',
                hintStyle: TextStyle(color: Colorapp.grey),
                suffixIcon: Icon(Icons.password_outlined, color: Colorapp.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
