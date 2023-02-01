import 'package:aireasy/screens/inbox.screen.dart';
import 'package:aireasy/screens/search.screen.dart';
import 'package:aireasy/screens/user.screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPageIndex = 1;
  void _changePageIndex(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  List<Widget> screens = [
    const UserScreen(),
    const SearchScreen(),
    const InboxScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          currentIndex: _selectedPageIndex,
          onTap: _changePageIndex,
          items: const [
            BottomNavigationBarItem(
                label: 'User',
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)),
            BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)),
            BottomNavigationBarItem(
                label: 'Inbox',
                icon: Icon(FluentSystemIcons.ic_fluent_mail_inbox_regular),
                activeIcon:
                    Icon(FluentSystemIcons.ic_fluent_mail_inbox_filled)),
          ]),
    );
  }
}
