import 'package:flutter/material.dart';
import 'package:la_golosinadora/modules/home.dart';
import 'package:la_golosinadora/modules/products.dart';

class HomeNavigation extends StatelessWidget{
  const HomeNavigation({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home':(context) => const Home(),
        '/products': (context) => const Products()
      },
    );
  }
}