import 'package:app_tia_benta/page/client/client.routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Menu extends StatefulWidget {
  @override
  _Menu createState() => _Menu();
}

class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Aqui vai os dados do cara logado'),
            decoration: BoxDecoration(color: Colors.blue[100]),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () => {Modular.to.pushNamed('/')},
          ),
          ExpansionTile(
            title: Text('Cadastro'),
            children: [...ClientRouting.menuItem.register],
          ),
          ExpansionTile(
            title: Text('Relatorios'),
            children: [...ClientRouting.menuItem.report],
          ),
          ExpansionTile(
            title: Text('Teste'),
            children: [Text('t1'), Text('t2')],
          )
        ],
      ),
    );
  }
}
