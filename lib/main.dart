import 'package:flutter/material.dart';
import 'package:dentecs_v1/app/my_app.dart';
import 'package:dentecs_v1/core/services/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(const MyApp());
}
