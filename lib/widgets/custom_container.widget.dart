import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Widget child;
  const CustomContainer(
      {super.key, required this.padding, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
              width: 4, color: const Color.fromRGBO(227, 242, 253, 1))),
      child: child,
    );
  }
}
