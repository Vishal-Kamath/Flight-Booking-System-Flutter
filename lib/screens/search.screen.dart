import 'package:aireasy/page/signin.page.dart';
import 'package:aireasy/utils/styles.dart';
import 'package:aireasy/widgets/custom_logo.widget.dart';
import 'package:aireasy/widgets/cutom_buttom.widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Styles.navColor,
      elevation: 1,
      title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Logo(
              fontSize: 30,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            CustomButton(
              onTapFunction: () {
                Navigator.pushNamed(context, SignInPage.routeName);
              },
              text: const Text(
                'Sign In',
                textAlign: TextAlign.center,
              ),
              width: 100,
            )
          ]),
    ));
  }
}
