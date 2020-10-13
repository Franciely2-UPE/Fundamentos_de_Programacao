import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app_fund_programacao/home.dart';

class splashscreen extends StatefulWidget{
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen>{
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });

  }

    @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Center(
        child: Text(
          "Quiz",
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
