import 'package:flutter/material.dart';

class Answers extends StatelessWidget {

  final String answers;
  final void Function() onSelect; 

  Answers(this.answers, this.onSelect, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.blue,
          onPressed: onSelect,
          child: Text(answers),
          ),
      ),
    );
  }
}