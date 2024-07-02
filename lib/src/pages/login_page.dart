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
                  Color.fromARGB(255, 255, 81, 0),
                  Color.fromARGB(255, 255, 145, 0),
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
            height: 30,
          ),
          Container(
            height: 60,
            width: 330,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Colors.grey[600],
                ),
                labelText: 'Email',
              ),
              onSaved: (String? value) {
                // serve para salvar quando o usuario enviar o form
              },
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            ),
          ),
          SizedBox(
            width: 330,
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.vpn_key_rounded,
                  color: Colors.grey[600],
                ),
                hintText: 'What do people call you?',
                labelText: 'Password',
              ),
              onSaved: (String? value) {
                // serve para salvar quando o usuario enviar o form
              },
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.grey[800]),
              ),
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(330, 20)),
              backgroundColor: MaterialStatePropertyAll(Colors.blue),
            ),
            onPressed: () {},
            child: const Text(
              'LOGIN',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have as account?'),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Register',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
