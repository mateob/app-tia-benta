import 'package:app_tia_benta/core/model/menu.model.dart';
import 'package:app_tia_benta/page/client/client.crud.page.dart';
import 'package:app_tia_benta/page/client/client.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ClientRouting {
  static var client = 'client';
  final String routeName = 'client';

  final List<ChildRoute> routes = [
    ChildRoute("/$client", child: (_, __) => ClientPage()),
    ChildRoute('/client/:id/edit',
        child: (_, args) => ClientCRUDPage(id: args.params['id'])),
    ChildRoute('/client/:id/view',
        child: (_, args) => ClientCRUDPage(id: args.params['id'])),
    ChildRoute('/client/:id/create',
        child: (_, args) => ClientCRUDPage(id: args.params['id'])),
  ];

  static final MenuModel menuItem = new MenuModel([
    ListTile(
      leading: Icon(Icons.ac_unit),
      title: Text('Cliente'),
      onTap: () => {Modular.to.pushNamed('/$client')},
    )
  ], []);
}
