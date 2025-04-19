import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomtextTitle extends StatelessWidget {
  const CustomtextTitle({super.key, required this.number});
  final int number; 
  @override
  Widget build(BuildContext context) {
    return Text(
      "$number".tr,
      style: Theme.of(
        context,
      ).textTheme.headlineLarge!.copyWith(color: ColorApp.grey),
    );
  }
}
