import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MobileAppBar extends StatelessWidget {
  final Text titleBar;
  const MobileAppBar(this.titleBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: titleBar,
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
      ],
    );
  }
}
