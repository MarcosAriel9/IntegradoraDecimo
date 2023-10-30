import 'package:flutter/material.dart';
import 'package:la_golosinadora/modules/home.dart';
import 'package:la_golosinadora/modules/products.dart';
import 'package:la_golosinadora/modules/store_info.dart';

class PedidosNavigation extends StatelessWidget{
  const PedidosNavigation({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/productos',
      routes: {
        '/productos':(context) => const Products(),
        '/allproducts':(context) => const StoreInfo(),
        '/home':(context) => const Home(),

      },
    );
  }
}