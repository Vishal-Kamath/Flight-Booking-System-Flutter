import 'package:aireasy/utils/styles.dart';
import 'package:aireasy/widgets/custom_dropdown.widget.dart';
import 'package:aireasy/widgets/custom_logo.widget.dart';
import 'package:aireasy/widgets/custom_textfield.widget.dart';
import 'package:aireasy/widgets/custom_container.widget.dart';
import 'package:aireasy/widgets/cutom_buttom.widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static String routeName = '/signup';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _mobileNoController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _genderController.dispose();
    _dobController.dispose();
    _mobileNoController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
            'Sign Up',
            style: TextStyle(color: Styles.dark),
          )),
      body: ListView(
          padding:
              EdgeInsets.symmetric(vertical: 30, horizontal: width * 0.025),
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
                        controller: _nameController,
                        hintText: 'name'),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                        passwordField: false,
                        controller: _emailController,
                        hintText: 'email'),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomDropdown(
                        list: ['Male', 'Female', 'Others'], title: 'gender'),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                        passwordField: false,
                        controller: _dobController,
                        hintText: 'date of birth'),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                        passwordField: false,
                        controller: _mobileNoController,
                        hintText: 'mobile Number'),
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
                    CustomTextField(
                        passwordField: true,
                        controller: _confirmPasswordController,
                        hintText: 'Confirm Password'),
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
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text('already have an account? '),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Sign In'))
              ]),
            )
          ]),
    );
  }
}
