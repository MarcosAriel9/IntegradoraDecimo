import 'package:flutter/material.dart';
import 'package:la_golosinadora/kernel/widget/menu.dart';
import 'package:la_golosinadora/kernel/widget/splash.dart';
import 'package:la_golosinadora/modules/pedidos.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/menu': (context) => const Menu(),
        '/pedidos': (context) => const Pedidos(),
      },
    );
  }
}