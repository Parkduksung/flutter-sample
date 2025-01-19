import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_sample/config/dependencies.dart';
import 'package:flutter_sample/routing/router.dart';

void main() {
  runApp(
    MultiProvider(
      providers: appProviders,
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router());
  }
}
