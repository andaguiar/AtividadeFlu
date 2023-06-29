import 'package:flutter/material.dart';
import './questionario.dart';
import './inicio.dart';

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
  var exibirQuestionario = false;

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

  void iniciarQuestionario() {
    setState(() {
      exibirQuestionario = true;
    });
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
          title: exibirQuestionario
              ? Text(perguntas[perguntaAtual]["texto"].toString())
              : Text('Bem-vindo!'),
        ),
        body: exibirQuestionario
            ? Questionario(
                perguntas: perguntas,
                perguntaAtual: perguntaAtual,
                onRespostaSelecionada: acao,
              )
            : Inicio(iniciarQuestionario),
      ),
    );
  }
}
