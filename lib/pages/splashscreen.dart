import 'package:adoraapp/pages/home_page.dart';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Container(
        alignment: Alignment.center,
        child: Image.asset("assets/images/logo-splashscreen.png",
        height: 180,
        ),
      ),
    );
  }

  @override
  void initState(){
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Home())
      );
    });
  }

  
}