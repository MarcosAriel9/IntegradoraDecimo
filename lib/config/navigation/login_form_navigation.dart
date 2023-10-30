import 'package:flutter/material.dart';
import 'package:la_golosinadora/modules/forms/login_form.dart';

class LoginFormNavigation extends StatelessWidget{
  const LoginFormNavigation({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login':(context) => const FirstForm()
      },
    );
  }
}