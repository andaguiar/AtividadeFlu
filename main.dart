import 'package:aula1/perguntas.dart';
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
  var cont = 0; 
  final perguntas = [
    "Qual sua cor favorita?",
    "Onde você mora?",
    "Você tem internet em sua casa?",

  ];

  void clicou() {
    setState(() {
      contador:
      contador++;
    });
    print(contador);
  }

  void criar() {
    setState(() {
      cont++;
      botoes.add(ElevatedButton(onPressed: clicou, child: Text("Botão $cont")))
    });
    print(contador);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Jogo das perguntas!"),
            ),
            
    body: Column(
      children: [
                Perguntas(perguntas[contador]),
                ElevatedButton(onPressed: clicou, child: Text("azul")),
                ElevatedButton(onPressed: null, child: Text("vermelho")),
                ElevatedButton(onPressed: null, child: Text("laranja")),
                ElevatedButton(onPressed: null, child: Text("roxo")),
                TextField(decoration: InputDecoration(labelText: 'Digite sua resposta')),
                ElevatedButton(onPressed: clicou, child: Text("roxo")),
                
    
    ]       
             
                 )));
          
  }
}