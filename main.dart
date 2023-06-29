import 'package:flutter/material.dart';
import './questionario.dart';

void main() {
  runApp(AulaComponentes());
}

class AulaComponentes extends StatefulWidget {
  @override
  State<AulaComponentes> createState() => _AulaComponentesState();
}

class _AulaComponentesState extends State<AulaComponentes> {
  var perguntaAtual = 0;
  var cor = Colors.white;

  final List<Map<String, Object>> perguntas = [
    {
      "texto": "Qual é a sua comida favorita?",
      "respostas": ["Pizza", "Hambúrguer", "Sushi", "Massa"]
    },
    {
      "texto": "Qual é o seu filme favorito?",
      "respostas": ["O Poderoso Chefão", "Interestelar", "Titanic", "A Origem"]
    },
    {
      "texto": "Qual é o seu esporte favorito?",
      "respostas": ["Futebol", "Basquete", "Tênis", "Natação"]
    },
  ];

  bool get temPergunta {
    return perguntaAtual < perguntas.length;
  }

  void acao() {
    setState(() {
      perguntaAtual++;
    });
    print(perguntaAtual);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: temPergunta
              ? Text(perguntas[perguntaAtual]["texto"].toString())
              : Text("Terminou"),
        ),
        body: temPergunta
            ? Questionario(
                perguntas: perguntas,
                perguntaAtual: perguntaAtual,
                onRespostaSelecionada: () => acao(),
              )
            : Text("Resultado"),
      ),
    );
  }
}
