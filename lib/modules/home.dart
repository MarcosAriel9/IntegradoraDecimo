import 'package:flutter/material.dart';
import 'package:la_golosinadora/kernel/colors/colors_app.dart';
import 'package:la_golosinadora/modules/delivery.dart';
import 'package:la_golosinadora/modules/products.dart';
import 'package:la_golosinadora/modules/register_product.dart';
import 'package:la_golosinadora/modules/store_info.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // appBar: AppBar(
        //   title: const Text('Inicio'),
        //   backgroundColor: ColorsApp.primaryColor,
        // ),
        body: RegisterProduct(),
        );
  }
}
