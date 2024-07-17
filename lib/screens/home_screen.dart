import 'dart:math';

import 'package:flutter/material.dart';
import 'package:games_app/compnents/image_widget.dart';
import 'package:games_app/compnents/result_widget.dart';
import 'package:games_app/compnents/text_header.dart';
import 'package:games_app/enums/game_enum.dart';
import 'package:games_app/enums/result_enum.dart';
import 'package:games_app/screens/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  GameEnum? userChoice;
  GameEnum? cpuChoice;
  ResultEnum? result;
  int player =0;
  int cpu =0;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff1b2b4c),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextHeader(text: 'paper', size: 30,isBold: true,),
            TextHeader(text: 'rock', size: 30,isBold: true,),
            TextHeader(text: 'scissor', size: 30,isBold: true,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextHeader(text: 'Pick Your Weapon', size: 20,),
            ),
            GestureDetector(
              onTap: (){
                userChoice=GameEnum.rock;
                MakeCpuChoice();
                calculateResult();
                setState(() {});
              },
                child: ImageWidget('rock')),

            GestureDetector(
              onTap: (){
                userChoice=GameEnum.paper;
                MakeCpuChoice();
                calculateResult();
                setState(() {});
              },
                child: ImageWidget('paper')),

            GestureDetector(
                onTap: (){
                  userChoice=GameEnum.scissor;
                  MakeCpuChoice();
                  calculateResult();
                  setState(() {});
                },
                child: ImageWidget('scissor')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResultWidget('Player', player),
                  ResultWidget('Cpu', cpu),

                ],
              ),
            ),
          ],
        ),
      ) ,
    );
  }

// ignore: non_constant_identifier_names
void MakeCpuChoice (){
  Random random = Random();
  int randomNumber = random.nextInt(3);
  cpuChoice = GameEnum.values[randomNumber];
 }


 void calculateResult(){
    if(userChoice==GameEnum.rock){
      if(cpuChoice==GameEnum.rock){
        print(player);
        print(cpu);
        result = ResultEnum.draw;
      }
      else if(cpuChoice==GameEnum.paper){
        print(cpu++);
        result= ResultEnum.lose;
      }
      else if(cpuChoice==GameEnum.scissor){
        print(player++);
        result= ResultEnum.win;
      }
    }

    else if(userChoice==GameEnum.paper){
      if(cpuChoice==GameEnum.paper){
        print(cpu);
        print(player);
        result = ResultEnum.draw;
      }
      else if(cpuChoice==GameEnum.scissor){
        print(cpu++);
        result= ResultEnum.lose;
      }
      else if(cpuChoice==GameEnum.rock){
        print(player++);
        result= ResultEnum.win;
      }
    }

    else if(userChoice==GameEnum.scissor){
      if(cpuChoice==GameEnum.scissor){
        print(cpu);
        print(player);
        result = ResultEnum.draw;
      }
      else if(cpuChoice==GameEnum.rock){
        print(cpu++);
        result= ResultEnum.lose;
      }
      else if(cpuChoice==GameEnum.paper){
        print(player++);
        result= ResultEnum.win;
      }
    }

    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen(result!,cpuChoice!,userChoice!)));
    print(result);
 }
}
