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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 190, 189, 86),
      // appBar: AppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/img/logo.png"),
            ElevatedButton(                
                child: Text("Jogar"), onPressed: _functionIrParaTelaJogar),  
          ],
        ),
      ),
    );
  }
}
