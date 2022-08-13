import 'package:flutter/material.dart';

class Questao extends StatelessWidget {

  final String text; 

  const Questao(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(26.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20,),
        textAlign: TextAlign.center,
        ),
    );
  }
}