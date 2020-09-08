  import 'dart:convert';
  import 'package:flutter/material.dart';
  
  class quizpage extends StatefulWidget{
    @override
    _quizpageState createState() => _quizpageState();

  }
  class _quizpageState extends State<quizpage>{
    Widget choicebutton(string){
      return Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        child: MaterialButton(
          onPressed: (){},
          child: Text(
            "Instrução de controle.",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Alike",
              fontSize: 16.0,
            ),
          ),
          color: Colors.green,
          highlightColor: Colors.green[700],
          splashColor: Colors.green[700],
          minWidth: 200.0,
          height: 45.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      );
    }
    @override
    Widget build (BuildContext context){
      return Scaffold(
        body: Column(
          children: <Widget>[
            Image(image: AssetImage("imagens/Ativ.png")),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,

                child: Text(
                  "Qual instrução possui o bloco de diálogo?",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  children: <Widget>[
                    choicebutton("Instrução de controle"),
                    choicebutton("Instrução de aparência"),
                    choicebutton("Instrução de Eventos"),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
              ),
            ),
          ],

        ),

      );
    }
  }
