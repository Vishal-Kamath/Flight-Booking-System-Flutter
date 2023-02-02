import 'package:aireasy/utils/styles.dart';
import 'package:aireasy/widgets/custom_dropdown.widget.dart';
import 'package:aireasy/widgets/cutom_buttom.widget.dart';
import 'package:flutter/material.dart';

const List<String> FlightList = [
  'Mumbai',
  'New Delhi',
  'Pune',
  'Hyderabad',
  'Kolkata',
  'Chennai',
  'Goa',
  'Bengaluru'
];

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Styles.light,
      body: ListView(
          padding:
              EdgeInsets.symmetric(vertical: 30, horizontal: width * 0.025),
          children: [
            const CustomDropdown(
              list: FlightList,
              title: 'Source',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomDropdown(
              list: FlightList,
              title: 'Destination',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                onTapFunction: () {},
                text: Text(
                  'Search',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Styles.light, fontSize: 25),
                ))
          ]),
    );
  }
}
