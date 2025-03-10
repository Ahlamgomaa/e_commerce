import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomtextBody extends StatelessWidget {
  const CustomtextBody({super.key, required this.number});
final int number; 
  @override
  Widget build(BuildContext context) {
    return  Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "$number".tr,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall!.copyWith(color: Colorapp.grey),
              ),
            );
  }
}