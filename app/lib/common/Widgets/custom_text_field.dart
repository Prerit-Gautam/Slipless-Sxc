import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Icon leading;
  final bool obs;
  CustomTextField(
      {super.key,
      required this.hint,
      required this.leading,
      required this.obs});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obs,
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white),
        filled: true,
        prefixIcon: leading,
        prefixIconColor: Colors.white,
        fillColor: Colors.grey,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
