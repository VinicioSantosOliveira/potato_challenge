import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(99),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color.fromARGB(255, 255, 116, 2),
                Color.fromARGB(255, 255, 166, 32),
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 50,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.elliptical(100, 100),
                    topEnd: Radius.elliptical(0, 0),
                    bottomStart: Radius.elliptical(0, 0),
                    bottomEnd: Radius.elliptical(100, 100),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
