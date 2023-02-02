import 'package:aireasy/page/signin.page.dart';
import 'package:aireasy/screens/inbox.screen.dart';
import 'package:aireasy/screens/search.screen.dart';
import 'package:aireasy/screens/user.screen.dart';
import 'package:aireasy/utils/styles.dart';
import 'package:aireasy/widgets/custom_logo.widget.dart';
import 'package:aireasy/widgets/cutom_buttom.widget.dart';
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
      ),
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
