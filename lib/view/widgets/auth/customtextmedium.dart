import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customtextmedium extends StatelessWidget{
  
  const Customtextmedium({super.key, required this.number}); 
  final int number;

  @override
  Widget build(BuildContext context) {
   return Text(
              "$number".tr,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.copyWith(color: Colorapp.black),
            );
  }
}