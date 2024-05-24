import 'dart:math';
import 'package:flutter/material.dart';
import 'package:cara_ou_coroa_imperial/TelaPrinciapal.dart';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _loading = false;

  var _imgResultado = "cara_ou_coroa_versus";

  @override
  void initState() {

    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = Tween(begin: 0.0, end: 2 * pi).animate(_controller);
    
    // Finaliza a animação do loading
        _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _loading = false;
        });
      }
    });
    
  }

  void _functionJogar() {
    this._loading = true;

    var _arrayCaraOuCoroa = ["cara", "coroa"];
    var _numeroRandomico = Random().nextInt(_arrayCaraOuCoroa.length);
    var _resultado = _arrayCaraOuCoroa[_numeroRandomico];

    setState(() {
      this._imgResultado = _resultado;
    });

    // Inicia a animação
    _controller.reset();
    _controller.forward();
  }

  // void _functionVoltar() {
  //   Navigator.pop(context);
  // }

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 190, 189, 86),
      appBar: AppBar(
        title: Text("Cara ou Coroa"),
        backgroundColor: Color.fromARGB(255, 148, 145, 73),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: _animation.value,
                    child: Image.asset("assets/img/${_imgResultado}.png"),
                  );
                },
              ),
              SizedBox(height: 20),
              SizedBox(
                width: _screenWidth / 2,
                child: ElevatedButton(
                  child: Text("Jogar"),
                  onPressed: _functionJogar,
                ),
              ),

              SizedBox(height: 20,),
              if (_loading) CircularProgressIndicator(),
              // ElevatedButton(
              //   child: Text("Voltar"),
              //   onPressed: _functionVoltar,
              // ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
