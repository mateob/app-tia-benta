import 'package:app_tia_benta/core/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        title: 'Tia Benta',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          drawer: Menu(),
          appBar: AppBar(
            title: Text('teste'),
          ),
          body: Container(
            color: Colors.amber,
          ),
        )).modular();
  }
}
