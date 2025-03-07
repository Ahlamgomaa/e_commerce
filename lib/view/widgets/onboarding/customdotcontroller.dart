import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:e_commerce_app/data/dataSource/static/static.dart';
import 'package:flutter/material.dart';

class Customdotcontroller extends StatelessWidget {
  const Customdotcontroller({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        onboardingList.length,
                        (i) => AnimatedContainer(
                          margin: EdgeInsets.only(right: 5),
                          duration: Duration(milliseconds: 900),
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            color: Colorapp.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  );
  }
}