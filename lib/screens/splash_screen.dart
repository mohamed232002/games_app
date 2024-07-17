import 'package:flutter/material.dart';
import 'package:games_app/core/size_config.dart';
import 'package:games_app/screens/home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),),);
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          children: const [
            Expanded(
                child: Center(
                  child: CircleAvatar(
                    radius: 70,
                     backgroundImage: AssetImage('assets/images/me.jpg',),
                  ),
                ),
            ),
            Text('Developed By Eng Mohamed Hosny',
              style: TextStyle(color: Colors.red,
                fontSize:20,
                fontWeight: FontWeight.bold,
              ),)

          ],
        ),
      ),
    );
  }
}
