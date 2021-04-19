import 'package:app_tia_benta/core/menu.dart';
import 'package:flutter/material.dart';

class ClientCRUDPage extends StatefulWidget {
  ClientCRUDPage({Key key, this.id}) : super(key: key);
  final String id;
  @override
  _ClientCRUDPage createState() => _ClientCRUDPage();
}

class _ClientCRUDPage extends State<ClientCRUDPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          title: Text('Cliente CRUD'),
        ),
        body: Center(
          child: Text('Pagina Cliente Crud'),
        ));
  }
}
