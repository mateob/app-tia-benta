import 'package:app_tia_benta/shared/base/widgets/app_bar/web_app_bar_responsive_content.dart';
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
          WebAppBarResponsiveContent(),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          const SizedBox(
            width: 24,
          ),
          SizedBox(
            height: 38,
            child: OutlineButton(
              child: Text('Fazer Login'),
              textColor: Colors.white,
              borderSide: BorderSide(color: Colors.white, width: 2),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            height: 40,
            child: RaisedButton(
              child: Text('Cadastre-se'),
              color: Colors.white,
              textColor: Colors.black,
              onPressed: () {},
            ),
          )
        ],
      ),
      toolbarHeight: 72,
    );
  }
}
