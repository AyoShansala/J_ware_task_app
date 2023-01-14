import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:j_ware_task/screens/cal_tab.dart';
import 'package:j_ware_task/screens/url_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedScreenIndex = 0;
  final List _screens = [
    {"screen": const CalTab(), "title": "Cal Screen"},
    {"screen": const UrlTab(), "title": "Url Screen"}
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _screens[_selectedScreenIndex]["title"],
        ),
      ),
      body: _screens[_selectedScreenIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Cal",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Url",
          )
        ],
      ),
    );
  }
}
