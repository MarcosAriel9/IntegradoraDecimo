import 'package:flutter/material.dart';
import 'package:la_golosinadora/modules/pedidos.dart';

class PedidosNavigation extends StatelessWidget{
  const PedidosNavigation({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/pedidos',
      routes: {
        '/pedidos':(context) => const Pedidos()
      },
    );
  }
}