import 'package:flutter/material.dart';

main() {
  runApp(ComponenteInicial());
}

class ComponenteInicial extends StatefulWidget {
  @override
  State<ComponenteInicial> createState() => _ComponenteInicialState();
}

class _ComponenteInicialState extends State<ComponenteInicial> {
  var contador = 0;

  final perguntas = [
    "Quantos anos vc tem?",
    "Onde você mora?",
    "Você tem internet em sua casa?",
    "Você gosta de sua casa?"
  ];

  void clicou() {
    setState(() {
      contador:
      contador++;
    });
    print(contador);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Perguntas e respostas!"),
            ),
            
    body: Column(
      children: [
                Text(perguntas[contador]),
                ElevatedButton(
                onPressed: clicou,
                child: Text("Clique aqui"),
                ),

                ElevatedButton(
                onPressed: () {
                print("Outra função");
                  },
                  child: Text("Clique aqui anonimamente"),
                ),

                ElevatedButton(
                  onPressed: () => print("Função arrow"),
                  child: Text("Meu botao"),
                ),
                
                 ElevatedButton(
                  onPressed: null,
                  child: Text("Nulo"),
                ),

     Column(children: <Widget>[
                  Text('Aprendendo'),
                  Text('Programação'),
                  Text('Flutter'),
                ]),
              ],
            )));
  }
}