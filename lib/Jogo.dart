import 'dart:math';

import 'package:cara_ou_coroa_imperial/TelaPrinciapal.dart';
import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imgResultado = "cara_ou_coroa_versus";

  void _functionJogar() {
    var _arrayCaraOuCoroa = ["cara", "coroa"];
    var _numeroRandomico = Random().nextInt(_arrayCaraOuCoroa.length);
    var _resultado = _arrayCaraOuCoroa[_numeroRandomico];

    setState(() {
      this._imgResultado = _resultado;
    });
  }

  void _functionVoltar() {
    Navigator.pop(
        context, MaterialPageRoute(builder: (context) => Telaprinciapal()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 190, 189, 86),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/img/${_imgResultado}.png"),
            ElevatedButton(
              child: Text("Jogar"),
              onPressed: _functionJogar,
            ),
            ElevatedButton(child: Text("Voltar"), onPressed: _functionVoltar),
          ],
        ),
      ),
    );
  }
}
