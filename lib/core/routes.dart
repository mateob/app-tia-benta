import 'package:app_tia_benta/page/client/client.routing.dart';
import 'package:app_tia_benta/page/home.page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Routes extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, __) => HomePage(
              title: 'Pagina principal',
            )),
    ...ClientRouting().routes,
  ];
}
