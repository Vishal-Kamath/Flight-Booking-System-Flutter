import 'package:aireasy/widgets/custom_outline.widget.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool passwordField;
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.passwordField});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return CustomOutline(
        title: widget.hintText,
        child: TextField(
          obscureText: widget.passwordField ? isObscure : false,
          controller: widget.controller,
          decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: widget.passwordField
                  ? TextButton(
                      child:
                          isObscure ? const Text('Show') : const Text('Hide'),
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      })
                  : null),
        ));
  }
}
