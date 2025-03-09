import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:flutter/material.dart';

class Custombuttonlang  extends StatelessWidget{
 const  Custombuttonlang({super.key,required this.text, this.onPressed});
final  String text;
final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              width: double.infinity,
              child: MaterialButton(
                color: Colorapp.primaryColor,
                textColor: Colors.white,
                onPressed: onPressed,
                child: Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            );
  }
}