import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromARGB(255, 255, 116, 2),
                  Color.fromARGB(255, 255, 166, 32),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(90),
              ),
            ),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 85, bottom: 35),
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30, left: 280),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(labelText: 'Cpf'),
            ),
          ),
        ],
      ),
    );
  }
}
