import 'package:flutter/material.dart';
import 'package:la_golosinadora/kernel/colors/colors_app.dart';
import 'package:la_golosinadora/kernel/validations/validations.dart';

class FirstForm extends StatefulWidget {
  const FirstForm({super.key});

  @override
  State<FirstForm> createState() => _FirstFormState();
}

class _FirstFormState extends State<FirstForm> {
  final _formkey = GlobalKey<FormState>();
  bool _isButtonDisabled = true;
  final TextEditingController _email = TextEditingController(text: '');
  final TextEditingController _password = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
              key: _formkey,
              onChanged: () {
                setState(() {
                  _isButtonDisabled = !_formkey.currentState!.validate();
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(children: <Container>[
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    child: Image.asset(
                      'assets/images/logo_golosinadora.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'example@gmail.com',
                        labelStyle: TextStyle(color: ColorsApp.whiteColor),
                        hintStyle: TextStyle(color: ColorsApp.whiteColor),
                      ),
                      validator: (value) {
                        RegExp regex = RegExp(Validations.email);
                        if (value == null || value.isEmpty) {
                          return 'campo obligatorio';
                        } else if (!regex.hasMatch(value)) {
                          return 'Introduce un correo válido';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      controller: _email,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Contraseña',
                        labelStyle: TextStyle(color: ColorsApp.whiteColor),
                        hintStyle: TextStyle(color: ColorsApp.whiteColor),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Campo Obligatorio';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      controller: _password,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorsApp.secondaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          minimumSize: const Size(200, 50),
                        ),
                        onPressed: _isButtonDisabled
                            ? null
                            : () {
                                print('${_email.value}');
                                Navigator.pushReplacementNamed(
                                    context, '/home');
                              },
                        child: const Text('Iniciar Sesión')),
                  ),
                ]),
              )),
        ),
      ),
    );
  }
}
