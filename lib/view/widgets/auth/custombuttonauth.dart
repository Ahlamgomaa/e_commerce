import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        padding: EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,
        color: Colorapp.primaryColor,
        textColor: Colors.white,

        child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
