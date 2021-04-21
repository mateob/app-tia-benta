import 'package:app_tia_benta/core/menu.dart';
import 'package:app_tia_benta/shared/base/widgets/app_bar/load_app_bar.dart';
import 'package:flutter/material.dart';

abstract class BaseCrud<T extends StatefulWidget> extends State<T> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<BottomNavigationBarItem> bottonNavigationBarItems();
  Text appBarTitle();
  List<Widget> widgetList();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        drawer: Menu(),
        appBar: LoadAppBar(titleBar: appBarTitle(), constraints: constraints),
        bottomNavigationBar: BottomNavigationBar(
          items: bottonNavigationBarItems(),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue[400],
          onTap: _onItemTapped,
        ),
        body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400),
              child: widgetList().elementAt(_selectedIndex),
            )),
      );
    });
  }
}
