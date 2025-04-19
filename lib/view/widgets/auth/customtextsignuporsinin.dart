import 'package:e_commerce_app/core/constant/colorapp.dart';

import 'package:flutter/material.dart';

class Customtextsignuporsinin extends StatelessWidget {
  const Customtextsignuporsinin({
    super.key,
    required this.text1,
    required this.text2,
    required this.onTap,
  });

  final String text1;
  final String text2;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            style: TextStyle(
              color: ColorApp.primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
