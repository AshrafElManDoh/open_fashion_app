import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (v) {
        if (v!.isEmpty) {
          return "Please fill the field!";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: label,
        hintStyle: TextStyle(
          fontFamily: "TenorSans",
          color: Colors.grey.shade700,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
