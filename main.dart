import 'package:aula/criar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ComponenteInicial());
}

class ComponenteInicial extends StatefulWidget {
  @override
  State<ComponenteInicial> createState() => _ComponenteInicialState();
}

class _ComponenteInicialState extends State<ComponenteInicial> {
  var contador = 0;
  var cont = 0;
  List<Widget> botoes = [];

  final perguntas = [
    "signo?",
    "cor?",
    "idade?",
    "sexualidade?",
  ];

  void eventobotao() {
    setState(() {
      contador++;
    });
    print(contador);
  }

  void criarbt() {
    if (cont < 5) {
      setState(() {
        cont++;
        botoes.add(
          ElevatedButton(
            onPressed: eventobotao,
            child: Text("Botão $cont"),
          ),
        );
      });
    }
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
            Column(
              children: [
                perguntas(perguntas[contador]),
                ElevatedButton(
                  onPressed: eventobotao,
                  child: Text("amarelo"),
                ),
                ElevatedButton(
                  onPressed: eventobotao,
                  child: Text("roxo"),
                ),
                ElevatedButton(
                  onPressed: eventobotao,
                  child: Text("laranja"),
                ),
                ElevatedButton(
                  onPressed: eventobotao,
                  child: Text("azul"),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Digite sua resposta',
                    errorText:
                        contador == 0 ? 'Este campo é obrigatório' : null,
                  ),
                ),
                ElevatedButton(
                  onPressed: criarbt,
                  child: Text("Criar botão"),
                ),
              ],
            ),
            Column(children: botoes),
          ],
        ),
      ),
    );
  }
}
