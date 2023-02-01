import 'package:aireasy/utils/styles.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double fontSize;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  const Logo(
      {super.key,
      required this.fontSize,
      required this.mainAxisAlignment,
      required this.crossAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          'Air',
          style: TextStyle(color: Styles.dark, fontSize: fontSize),
        ),
        Text(
          'Easy',
          style: TextStyle(color: Styles.primaryBlueColor, fontSize: fontSize),
        )
      ],
    );
  }
}
