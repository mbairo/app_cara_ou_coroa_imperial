import 'package:flutter/material.dart';

class DomPedro2 extends StatefulWidget {
  const DomPedro2({Key? key}) : super(key: key);

  @override
  State<DomPedro2> createState() => _DomPedro2State();
}

class _DomPedro2State extends State<DomPedro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 190, 189, 86),
      appBar: AppBar(
        title: Text("O Imperador Republicano"),
        backgroundColor: Color.fromARGB(255, 148, 145, 73),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "D. Pedro II: O Imperador Republicano",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              "Dom Pedro II é frequentemente referido como um 'Imperador Republicano' devido a uma série de características e atitudes que demonstravam seu comprometimento com valores mais associados a uma república do que a uma monarquia tradicional. Guy Gauthier, em seu livro 'O Imperador Republicano', destaca vários aspectos que justificam essa descrição:",
              style: TextStyle(fontSize: 16.0),
            ),

            // Início do trecho de exemplo
            SizedBox(height: 8.0),
            Text(
              "1. Simplicidade e Modéstia Pessoais:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "Pedro II era conhecido por sua vida pessoal simples e modesta, o que contrastava com a pompa e o luxo frequentemente associados a monarcas. Ele evitava ostentações e vivia de forma relativamente frugal.",
              style: TextStyle(fontSize: 16.0),
            ),
            // Fim do trecho de exemplo

            // Demais itens da lista
            SizedBox(height: 8.0),
            Text(
              "2. Valorização da Educação e Ciência:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "Ele tinha um profundo amor pela educação, ciência e cultura. Incentivou a criação de instituições educacionais e científicas no Brasil e manteve correspondência com intelectuais e cientistas de todo o mundo.",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "3. Defesa da Liberdade de Imprensa e Expressão:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "Dom Pedro II defendia a liberdade de imprensa e expressão, permitindo críticas ao governo e promovendo um ambiente de debate público aberto.",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "4. Apoio ao Abolicionismo:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "Ele foi um defensor da abolição da escravidão, uma posição progressista e humanitária. Embora enfrentasse forte oposição de setores conservadores da sociedade, ele apoiou medidas que levaram à abolição da escravidão com a assinatura da Lei Áurea em 1888 por sua filha, a princesa Isabel.",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "5. Respeito à Constituição e ao Parlamento:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "Dom Pedro II respeitava as instituições democráticas do país, como o Parlamento, e governava de acordo com a constituição. Ele não impunha sua vontade sobre os legisladores e frequentemente agia como um moderador entre as diversas facções políticas.",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "6. Postura Diante da Proclamação da República:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "Quando foi deposto em 1889, após o golpe da república, ele aceitou a decisão com dignidade e não incentivou a resistência contra a proclamação da república. Sua saída pacífica do poder reflete uma atitude mais republicana do que monárquica.",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "7. Atitude Crítica em Relação ao Poder:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "Dom Pedro II tinha uma visão crítica sobre o exercício do poder absoluto. Ele via o papel do monarca como um servidor do país e do povo, não como um detentor de poder absoluto.",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "8. Inclusividade e Interesse Social:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "Ele mostrou um interesse genuíno pelo bem-estar social, incluindo a educação de crianças, a melhoria das condições de vida e a inclusão de diversas camadas da sociedade nos benefícios do progresso.",
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
