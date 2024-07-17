import 'package:flutter/material.dart';
import 'package:games_app/compnents/image_widget.dart';
import 'package:games_app/compnents/text_header.dart';
import 'package:games_app/enums/result_enum.dart';
import 'package:games_app/screens/home_screen.dart';
import '../enums/game_enum.dart';

class ResultScreen extends StatelessWidget {

 final ResultEnum resultEnum;
 final GameEnum userChoice;
 final GameEnum cpuChoice;

 ResultScreen(this.resultEnum, this.userChoice, this.cpuChoice);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: TextHeader(text: 'Result',size: 27,isBold: true,),
      ),),
      backgroundColor:const Color(0xff1b2b4c) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextHeader(text: resultEnum.name, size: 25,isBold: true,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      TextHeader(text: 'cpu', size: 20),
                      ImageWidget(userChoice.name),
                    ],
                  ),
                  Column(
                    children: [
                      TextHeader(text: 'user', size: 15),
                      ImageWidget(cpuChoice.name),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
              }, child: TextHeader(text: 'Reset',size: 25,),),
            ),
          ],
        ),
      ),
    );
  }
}
