import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WebAppBar extends StatelessWidget {
  final Text titleBar;
  const WebAppBar(this.titleBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        children: [
          titleBar,
          const SizedBox(
            width: 32,
          ),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          const SizedBox(
            width: 24,
          ),
          OutlineButton(onPressed: () {})
        ],
      ),
      toolbarHeight: 72,
    );
  }
}
