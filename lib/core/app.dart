import 'package:app_tia_benta/core/menu.dart';
import 'package:app_tia_benta/core/routes.dart';
import 'package:app_tia_benta/shared/nested_nav_item_key.dart';
import 'package:flutter/material.dart';
import 'package:nested_navigators/nested_nav_bloc.dart';
import 'package:nested_navigators/nested_nav_bloc_provider.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  final NestedNavigatorsBloc _bloc = NestedNavigatorsBloc<NestedNavItemKey>();

  @override
  Widget build(BuildContext context) {
    return NestedNavigatorsBlocProvider(
      bloc: _bloc,
      child: MaterialApp(
        initialRoute: '/',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        title: '',
        home: Menu(),
        onGenerateRoute: (routeSettings) => Routes.generateRoute(routeSettings),
      ),
    );
  }
}
