import 'package:cara_ou_coroa_imperial/DomPedro2.dart';
import 'package:cara_ou_coroa_imperial/Jogo.dart';
import 'package:flutter/material.dart';

class Telaprinciapal extends StatefulWidget {
  const Telaprinciapal({super.key});

  @override
  State<Telaprinciapal> createState() => _TelaprinciapalState();
}

class _TelaprinciapalState extends State<Telaprinciapal> {
  void _functionIrParaTelaJogar() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Jogo()));
  }

  void _functionIrParaTelaDomPedroII() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DomPedro2()));
  }

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 190, 189, 86),
      appBar: AppBar(
        title: Text("Cara ou Coroa"),
        // centerTitle: true,
        backgroundColor: Color.fromARGB(255, 148, 145, 73),
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/img/logo.png"),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: _screenWidth / 1.1,
              child: ElevatedButton(
                child: Text("Jogar"),
                onPressed: _functionIrParaTelaJogar,
              ),
            ),
            SizedBox(
              width: _screenWidth / 1.1,
              child: ElevatedButton(
                child: Text("D. Pedro II"),
                onPressed: _functionIrParaTelaDomPedroII,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
