import 'package:flutter/material.dart';

class ClientPage extends StatefulWidget {
  ClientPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center());
  }
}
