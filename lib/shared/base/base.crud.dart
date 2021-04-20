import 'package:app_tia_benta/core/menu.dart';
import 'package:app_tia_benta/shared/base/widgets/app_bar/mobile_app_bar.dart';
import 'package:app_tia_benta/shared/base/widgets/app_bar/web_app_bar.dart';
import 'package:app_tia_benta/shared/breakpoints.dart';
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
        appBar: loadAppBar(appBarTitle(), constraints),
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
    });
  }

  Widget loadAppBar(Text titleBar, BoxConstraints constraints) {
    return constraints.maxWidth < mobileBreakpoint
        ? PreferredSize(
            child: MobileAppBar(titleBar),
            preferredSize: Size(double.infinity, 56))
        : PreferredSize(
            child: WebAppBar(titleBar),
            preferredSize: Size(double.infinity, 72),
          );
  }
}
