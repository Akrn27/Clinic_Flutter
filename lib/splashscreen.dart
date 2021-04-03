import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:splashscreen/splashscreen.dart';
import 'constants.dart';
import 'main.dart';

void main() => runApp(MyApp());

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return StartState();
  }
}

class StartState extends State<SplashScreen>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async{
    var duration = Duration(seconds: 4);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => LoginPage()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("images/logo.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text(
              "Family Pharmacy",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              ),
            ),
            Text(
              "Medicine You Need",
              style: TextStyle(
                fontSize: 23.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
  }
}
