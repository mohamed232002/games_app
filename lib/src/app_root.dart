import 'package:flutter/material.dart';
import 'package:games_app/screens/home_screen.dart';
import 'package:games_app/screens/splash_screen.dart';
class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
