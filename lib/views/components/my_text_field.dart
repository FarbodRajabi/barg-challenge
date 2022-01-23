import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hint;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?) validator;

  const MyTextField({
    Key? key,
    required this.hint,
    required this.isPassword,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 24,
        color: Colors.green.shade800,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
      ),
      obscureText: false,
      // controller: controller,
      // validator: validator,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
        // errorBorder: const UnderlineInputBorder(
        //   borderSide: BorderSide(
        //     color: errorTextColor,
        //     width: 2,
        //   ),
        // ),
        // errorStyle: errorTextStyle,
      ),
    );
  }
}
