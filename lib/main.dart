import 'package:app_tia_benta/core/app.dart';
import 'package:app_tia_benta/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

Future main() async {
  await DotEnv.load(fileName: ".env");
  runApp(ModularApp(module: Routes(), child: App()));
}
