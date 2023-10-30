import 'package:flutter/material.dart';
import 'package:la_golosinadora/kernel/colors/colors_app.dart';

class Account extends StatelessWidget{
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mi Perfil'),
          backgroundColor: ColorsApp.primaryColor,
        ),
    );
  }

}