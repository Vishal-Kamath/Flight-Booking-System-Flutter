import 'package:aireasy/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomOutline extends StatelessWidget {
  final String title;
  final Widget child;
  const CustomOutline({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Styles.primaryBlueColor, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: child,
        ),
        Positioned(
          left: 10,
          top: 5,
          child: Container(
            padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
            color: Styles.light,
            child: Text(
              title,
              style: TextStyle(color: Styles.primaryBlueColor, fontSize: 12),
            ),
          ),
        ),
      ],
    );
  }
}
