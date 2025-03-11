import 'package:e_commerce_app/core/constant/colorapp.dart';
import 'package:flutter/material.dart';

class Customformfield extends StatelessWidget {
  const Customformfield({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.icon, required this.mycontroller,
  });
  final String labelText;
  final String hintText;
  final IconData icon;
  final TextEditingController mycontroller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: TextFormField(
        decoration: InputDecoration(
         focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colorapp.primaryColor, width: 2),
            borderRadius: BorderRadius.circular(40),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 16),
          label: Container(
            margin: EdgeInsets.symmetric(horizontal: 7),
            child: Text(labelText, style: TextStyle(color: Colorapp.primaryColor)),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colorapp.grey, fontSize: 14),
          suffixIcon: Icon(icon, color: Colorapp.grey),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
        ),
      ),
    );
  }
}
