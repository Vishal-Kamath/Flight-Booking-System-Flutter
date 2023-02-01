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
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              width: 2, color: const Color.fromRGBO(227, 242, 253, 1)),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5))),
      child: TextField(
        obscureText: widget.passwordField ? isObscure : false,
        controller: widget.controller,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: widget.hintText,
            suffixIcon: widget.passwordField
                ? TextButton(
                    child: isObscure ? Text('Show') : Text('Hide'),
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    })
                : null),
      ),
    );
  }
}
