import 'package:flutter/material.dart';
import './questionario.dart';

class Inicio extends StatelessWidget {
  final Function() iniciarQuestionario;

  Inicio(this.iniciarQuestionario);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olá, esse é o nosso APP de Perguntas e Respostas!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Esse é um questionário pessoal, diga suas preferências',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: iniciarQuestionario,
              child: Text('Iniciar'),
            ),
          ],
        ),
      ),
    );
  }
}
