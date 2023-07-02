import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final TextInputType textInputType;
  const CustomTextFormField(
      {super.key,
      required this.label,
      required this.hintText,
      required this.controller,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          fillColor: Colors.grey.withOpacity(0.20),
          filled: true,
          labelStyle: const TextStyle(color: Colors.black87),
          labelText: label,
          hintText: hintText,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
