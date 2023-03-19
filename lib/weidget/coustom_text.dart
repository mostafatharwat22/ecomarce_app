import 'package:flutter/material.dart';

class CoustomTextField extends StatelessWidget {
   CoustomTextField({Key? key, required this.controller, required this.hintText, required this.labelText, required this.obscureText,}) : super(key: key);
final String hintText;
final bool obscureText;
   final String labelText;
   dynamic controller;
   @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText:obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        )
      ),
    );
  }
}
