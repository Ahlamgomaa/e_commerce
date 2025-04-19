import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:flutter/material.dart';

class Customformfield extends StatelessWidget {
  const Customformfield({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.icon,
    required this.mycontroller,
    required this.valid,
    required this.isNumber,
    this.obscureText, this.onTapIcon,
  });

  final String labelText;
  final String hintText;
  final IconData icon;
  final TextEditingController mycontroller;
  final String Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: TextFormField(
        keyboardType:
            isNumber
                ? TextInputType.numberWithOptions(decimal: true)
                : TextInputType.text,
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null|| obscureText == false ? false : true,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorApp.primaryColor, width: 2),
            borderRadius: BorderRadius.circular(40),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 16),
          label: Container(
            margin: EdgeInsets.symmetric(horizontal: 7),
            child: Text(
              labelText,
              style: TextStyle(
                color: ColorApp.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: ColorApp.grey, fontSize: 14),
          suffixIcon: InkWell(
            onTap: onTapIcon,
            child: Icon(icon, color: ColorApp.grey),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
        ),
      ),
    );
  }
}
