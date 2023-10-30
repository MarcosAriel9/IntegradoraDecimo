import 'package:flutter/material.dart';
import 'package:la_golosinadora/kernel/colors/colors_app.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),
    () => Navigator.pushReplacementNamed(context, '/menu'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsApp.secondaryColor,
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/logo_golosinadora.png',
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // const Text(
            //   "La Golosinadora",
            //   style: TextStyle(
            //     color: ColorsApp.whiteColor,
            //     fontSize: 24,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}