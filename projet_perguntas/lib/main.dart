import 'package:flutter/material.dart';
import 'package:projet_perguntas/answers.dart';
import 'package:projet_perguntas/questions.dart';

main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  void _responder() { 
    setState(() {
    _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context){

    final List<String> perguntas= [
      'Qual sua cor favorita?',
      'Qual a capital do Ceará?',
      'Quantos continentes há na terra?',
    ];

    final List<String> resposta= [
      'Resposta 1',
      'Resposta 2',
      'Resposta 3',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body:  Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            Answers(resposta[0], _responder),
            Answers(resposta[1], _responder),
            Answers(resposta[2], _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{
  const PerguntaApp({Key? key}) : super(key: key);


  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}