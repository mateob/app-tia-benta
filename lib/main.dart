import 'package:app_tia_benta/core/app.dart';
import 'package:app_tia_benta/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() => runApp(ModularApp(module: Routes(), child: App()));
