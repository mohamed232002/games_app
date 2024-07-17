import 'package:flutter/material.dart';


class TextHeader extends StatelessWidget {
  final String  text ;
  final double size ;
  bool? isBold ;


  TextHeader({Key? key, required this.text, required this.size,this.isBold=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text (
      text , style: TextStyle(color: Colors.white ,fontSize: size,fontWeight: isBold! ? FontWeight.bold :FontWeight.normal),
    );
  }
}
