import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:e_commerce_app/data/dataSource/static/static.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView.builder(
          itemCount: onboardingList.length,
          itemBuilder:
              (context, i) => Column(
                children: [
                  Text(
                    onboardingList[i].title!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'cairo',
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 80),
                  Image.asset(
                    onboardingList[i].image!,
                    height: 300,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 80),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onboardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.5,
                        color: Colorapp.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
