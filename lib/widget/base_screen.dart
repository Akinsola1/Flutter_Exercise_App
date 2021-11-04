import 'package:excersise_app/constants/constant.dart';
import 'package:excersise_app/screens/home_page.dart';
import 'package:excersise_app/screens/settings.dart';
import 'package:excersise_app/screens/today.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class base_screen extends StatefulWidget {
  const base_screen({Key? key}) : super(key: key);

  @override
  _base_screenState createState() => _base_screenState();
}

class _base_screenState extends State<base_screen> {
  // bottom navigation bar
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    today(),
    Homepage(),
    settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Kactiveiconcolor,
          unselectedItemColor: Colors.grey,
          items: const[
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.calendar), label: "Today"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.home), label: "All Excersise"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.cog), label: "Settings"),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
