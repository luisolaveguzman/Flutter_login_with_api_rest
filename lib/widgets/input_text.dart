import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText, borderEnabled;
  const InputText({
    Key? key,
    required this.label,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.borderEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //style: TextStyle(color: Colors.white),
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          enabledBorder: borderEnabled
              ? const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12))
              : InputBorder.none,
          labelText: label,
          labelStyle: const TextStyle(
              color: Colors.black45, fontWeight: FontWeight.w500)),
    );
  }
}
