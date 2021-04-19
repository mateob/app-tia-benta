import 'package:app_tia_benta/core/menu.dart';
import 'package:flutter/material.dart';

abstract class BaseCrud<T extends StatefulWidget> extends State<T> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<BottomNavigationBarItem> bottonNavigationBarItems();
  AppBar appBar();
  List<Widget> widgetList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: appBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: bottonNavigationBarItems(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[400],
        onTap: _onItemTapped,
      ),
      body: Center(
        child: widgetList().elementAt(_selectedIndex),
      ),
    );
  }
}
