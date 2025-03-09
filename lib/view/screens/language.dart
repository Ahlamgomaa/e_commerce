import 'package:e_commerce_app/view/widgets/language/custombuttonlang.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose Language",
              style:Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 20),
            Custombuttonlang(text: "AR", onPressed: () {}),
            Custombuttonlang(text: "EN", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
