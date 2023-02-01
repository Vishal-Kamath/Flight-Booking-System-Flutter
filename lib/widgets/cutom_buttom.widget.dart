import 'package:aireasy/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTapFunction;
  final Widget text;
  final double? width;

  const CustomButton(
      {super.key, required this.onTapFunction, required this.text, this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Styles.primaryBlueColor,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Container(
          width: width != null ? width : MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 10),
          child: text,
        ),
      ),
    );
  }
}
