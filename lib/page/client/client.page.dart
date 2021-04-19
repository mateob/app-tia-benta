import 'package:app_tia_benta/shared/base/base.crud.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatefulWidget {
  ClientPage({Key key}) : super(key: key);
  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends BaseCrud<ClientPage> {
  @override
  List<BottomNavigationBarItem> bottonNavigationBarItems() {
    return [
      BottomNavigationBarItem(
          icon: Icon(Icons.access_alarm_sharp),
          label: 'Tempo 1',
          backgroundColor: Colors.brown),
      BottomNavigationBarItem(
          icon: Icon(Icons.access_alarm_sharp),
          label: 'Tempo 2',
          backgroundColor: Colors.amber)
    ];
  }

  @override
  List<Widget> widgetList() {
    return [Text('Teste 1'), Text('Teste 2')];
  }

  @override
  AppBar appBar() {
    return AppBar(
      title: Text('Cliente'),
    );
  }
}
