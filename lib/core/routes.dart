import 'package:app_tia_benta/page/client.page.dart';
import 'package:app_tia_benta/page/home.page.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static const home = '/';
  static const client = '/client';

  static MaterialPageRoute generateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) =>
            _buildPage(routeSettings.name, routeSettings.arguments));
  }

  static Widget _buildPage(String name, Object arguments) {
    // ignore: unused_local_variable
    Map<String, dynamic> argumentsMap =
        arguments is Map<String, dynamic> ? arguments : Map();
    switch (name) {
      case home:
        return HomePage(title: 'Teste de Rota');
      case client:
        return ClientPage(title: 'Teste Client');
      default:
        return Container();
    }
  }
}
