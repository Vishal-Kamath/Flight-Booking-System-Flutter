import 'package:aireasy/utils/styles.dart';
import 'package:aireasy/widgets/custom_outline.widget.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> list;
  final String title;
  const CustomDropdown({super.key, required this.list, required this.title});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  late List<String> list = widget.list;
  late String selected;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      selected = list[0];
    });
  }

  void dropDownChange(String? value) {
    if (value is String) {
      setState(() {
        selected = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomOutline(
        child: DropdownButton(
          elevation: 0,
          isExpanded: true,
          value: selected,
          onChanged: dropDownChange,
          items: list.map((String item) {
            return DropdownMenuItem(value: item, child: Text(item));
          }).toList(),
        ),
        title: widget.title);
  }
}
