import 'package:aireasy/page/signup.page.dart';
import 'package:aireasy/utils/styles.dart';
import 'package:aireasy/widgets/custom_logo.widget.dart';
import 'package:aireasy/widgets/custom_textfield.widget.dart';
import 'package:aireasy/widgets/custom_container.widget.dart';
import 'package:aireasy/widgets/cutom_buttom.widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  static String routeName = '/signin';
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Styles.navColor,
          elevation: 1,
          foregroundColor: Styles.dark,
          title: Text(
            'Sign In',
            style: TextStyle(color: Styles.dark),
          )),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: width * 0.025),
        children: [
          CustomContainer(
            padding:
                EdgeInsets.symmetric(vertical: 10, horizontal: width * 0.05),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Logo(
                      fontSize: 30,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                      passwordField: false,
                      controller: _usernameController,
                      hintText: 'username'),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                      passwordField: true,
                      controller: _passwordController,
                      hintText: 'password'),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                      onTapFunction: () {},
                      text: Text(
                        'Sign In',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Styles.light, fontSize: 20),
                      ))
                ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: width * 0.4,
                height: 2,
                color: Styles.primaryBlueColor,
              ),
              Text(
                'Or',
                style: TextStyle(
                    fontSize: 20,
                    color: Styles.primaryBlueColor,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: width * 0.4,
                height: 2,
                color: Styles.primaryBlueColor,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CustomContainer(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('don\'t have an account? '),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUpPage.routeName);
                  },
                  child: Text('Sign Up'))
            ]),
          )
        ],
      ),
    );
  }
}
