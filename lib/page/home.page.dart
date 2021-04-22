import 'package:app_tia_benta/core/menu.dart';
import 'package:app_tia_benta/shared/base/widgets/app_bar/load_app_bar.dart';
import 'package:app_tia_benta/shared/base/widgets/sections/advanced_section.dart';
import 'package:app_tia_benta/shared/base/widgets/sections/curses_section.dart';
import 'package:app_tia_benta/shared/base/widgets/sections/top_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        drawer: Menu(),
        appBar:
            LoadAppBar(titleBar: Text(widget.title), constraints: constraints),
        body: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1400),
            child: ListView(
              children: [
                TopSection(),
                AdvancedSection(),
                CursesSection(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
