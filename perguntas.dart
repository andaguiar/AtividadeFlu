import 'package:flutter/material.dart';

class Perguntas extends StatelessWidget{
  String text;
  Perguntas(this.text);
  @override 
  Widget build (BuildContext context){
  return Text(text, style: TextStyle (fontSize: 26),
  textAlign: TextAlign.center,);
}
}