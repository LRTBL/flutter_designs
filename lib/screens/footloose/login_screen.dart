// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff460054),
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 50, bottom: 40),
                child: const Image(
                  image: AssetImage('assets/footloose/footloose_shop.png'),
                  height: 170,
                  fit: BoxFit.cover,
                ),
              ),
              const Image(
                image: AssetImage('assets/footloose/footloose_logo.png'),
                height: 70,
                fit: BoxFit.cover,
              ),
              Container(
                margin: const EdgeInsets.only(top: 60, bottom: 30),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const Text(
                  '*Si no cuentas con un usuario en los sitemas de footloose ingresa tu código y la contraseña 12345',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              const CustomButtom(hint: "Código de colaborador (Ejm: 001149)"),
              const CustomButtom(hint: 'Contraseña', isFocused: true),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 20),
                child: ElevatedButton(
                  child: const Text(
                    'INGRESAR',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff460054),
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onSurface: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                    shape: const StadiumBorder(),
                  ),
                  // onPressed: null,
                  onPressed: () {},
                ),
              ),
              GestureDetector(
                onTap: () => print('OVLIDE'),
                child: const Text('¿Olvidaste tu contraseña?',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  final String hint;
  final bool isFocused;
  const CustomButtom(
      {Key? key, this.hint = "Ingrese el valor", this.isFocused = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: PhysicalModel(
        color: const Color(0xff460054),
        borderRadius: BorderRadius.circular(25),
        elevation: 2.0,
        child: TextField(
          cursorColor: Colors.purple.shade700,
          obscureText: isFocused,
          onChanged: (String value) => print(value),
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xff580d64), width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xff580d64), width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              hintText: hint,
              hintStyle: const TextStyle(
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
