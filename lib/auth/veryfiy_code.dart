

import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:e_commerce_app/view/widgets/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widgets/auth/customtextbody.dart';

import 'package:e_commerce_app/view/widgets/auth/customtextmedium.dart';

import 'package:e_commerce_app/view/widgets/auth/customtexttitle.dart';
import 'package:flutter/material.dart';


class VeryfiyCode extends StatelessWidget {
  const VeryfiyCode({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomtextTitle(number: 9),
        backgroundColor: Colorapp.backgroundcolor,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 23),
        child: ListView(
          children: [
            // SizedBox(height: 25),
            Customtextmedium(number: 10),
            SizedBox(height: 10),
            CustomtextBody(number: 6),
            SizedBox(height: 30),

            // Customformfield(
            //   mycontroller: controller.email,
            //   hintText: 'Enter Your Email ',
            //   labelText: 'Email',
            //   icon: Icons.email_outlined,
            // ),

            SizedBox(height: 10),
            CustomButtonAuth(text: "Check ", onPressed: () {}),
            SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
