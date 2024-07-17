import 'package:flutter/material.dart';
import 'package:games_app/compnents/text_header.dart';

class ResultWidget extends StatelessWidget {

  final String text ;
  final int counter ;

  ResultWidget(this.text, this.counter);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextHeader(text: text, size: 20),
        TextHeader(text: counter.toString(), size: 25,isBold: true,),
      ],
    );
  }
}
