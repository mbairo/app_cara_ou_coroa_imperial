import 'dart:async';

import 'package:cara_ou_coroa_imperial/TelaPrinciapal.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Telaprinciapal()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 190, 189, 86),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: GestureDetector(
              child: Image.asset(
                // "assets/img/cara_ou_coroa_versus.png",
                "assets/img/splash.png",

                fit: BoxFit.contain,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
