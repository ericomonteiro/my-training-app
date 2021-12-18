import 'package:flutter/material.dart';
import 'TextFieldsConsts.dart';

class DefaultTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData? icon;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool clearable;

  const DefaultTextField({
    Key? key,
    required this.controller,
    required this.label,
    required this.hint,
    this.icon,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.clearable = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: TextFieldsConsts.padding,
      child: TextField(
        controller: controller,
        style: TextFieldsConsts.textStyle,
        decoration: InputDecoration(
          prefixIcon: icon != null ? Icon(icon) : null,
          suffixIcon: !clearable
              ? const Text('')
              : GestureDetector(
              onTap: () {
                controller.clear();
              },
              child: const Icon(Icons.close)),
          labelText: label,
          hintText: hint,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
              const BorderSide(color: Colors.red, width: 1)),
        ),

        keyboardType: keyboardType,
        obscureText: obscureText,
      ),
    );
  }
}
