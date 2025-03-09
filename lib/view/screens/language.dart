import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:e_commerce_app/core/localization/changelocal.dart';
import 'package:e_commerce_app/view/widgets/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr, style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 20),
            Custombuttonlang(
              text: "AR",
              onPressed: () {
                controller.changelang('ar');
                Get.toNamed(Routeapp.onBoarding);
              },
            ),
            Custombuttonlang(
              text: "EN",
              onPressed: () {
                controller.changelang('en');
                 Get.toNamed(Routeapp.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
