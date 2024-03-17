import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    this.onChanged,
    this.validate,
    this.obscureText = false,
    this.prefix,
    this.suffix,
    this.pressedSuffix,
    this.inputType,
  });
  String? hintText;
  Function(String)? onChanged;
  String? Function(String?)? validate;
  VoidCallback? pressedSuffix;
  bool obscureText;
  IconData? prefix;
  IconData? suffix;
  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: hintText,
        prefixIcon: Icon(
          prefix,
          color: Colors.white,
        ),
        suffixIcon: IconButton(
          onPressed: pressedSuffix,
          icon: Icon(
            suffix,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
