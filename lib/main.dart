import 'package:app_tia_benta/core/app.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

void main() {
  FluroRouter.setupRouter();
  runApp(
    MaterialApp(
        title: 'Your website', onGenerateRoute: FluroRouter.router.generator),
  );
}

class CustomScaffold extends StatelessWidget {
  final Widget body;
  CustomScaffold({this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //your appbar here
      appBar: AppBar(),
      //your drawer here
      drawer: Drawer(),
      body: body,
    );
  }
}

class FluroRouter {
  static Router router = Router();
  static Handler _routeOneHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          PageOne());
  static Handler _routeTwoHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          PageTwo());
  static void setupRouter() {
    router.define(
      '/',
      handler: _routeOneHandler,
    );
    router.define(
      '/two',
      handler: _routeTwoHandler,
    );
  }
}

class PageOne extends StatelessWidget {
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Container(child: Text('Page 1')),
    );
  }
}

class PageTwo extends StatelessWidget {
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Container(child: Text('Page 2')),
    );
  }
}
