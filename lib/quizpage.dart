  import 'dart:async';
import 'dart:convert';
  import 'package:flutter/material.dart';
  import 'package:flutter/services.dart';

  class blocojson extends StatelessWidget {
    @ override
    Widget build (BuildContext context) {
      return FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/blocos.json"),
        builder: (context, snapshot) {
          List dados = json.decode(snapshot.data.toString());
          if (dados == null) {
            return Scaffold(
              body: Center(
                child: Text(
                  "Loading",
                ),
              ),
            );
          }else{
            return quizpage(dados : dados);
          }
        },
      );
    }
  }
  class quizpage extends StatefulWidget{
    var dados;

    quizpage({Key key, @required this.dados}) : super(key : key);
    @override
    _quizpageState createState() => _quizpageState(dados);
  }
  class _quizpageState extends State<quizpage>{
    var dados;
    _quizpageState(this.dados);

    Color colortoshow = Colors.blue;
    Color right = Colors.green;
    Color wrong = Colors.red;
    int marks = 0;
    int i = 1;
    int timer = 30;
    String showtimer = "30";


    Map<String, Color > btncolor = {
      "a" : Colors.blue,
      "b" : Colors.blue,
      "c" : Colors.blue,
    };
    @override
    void iniState(){
      starttimer();
      super.initState();
    }

    void starttimer() async{
      const onesec = Duration(seconds: 1);
      Timer.periodic(onesec, (Timer t) {
        setState(() {
          if(timer < 1){
            t.cancel();
            nextquestion();
          }else{
            timer = timer - 1;
          }
          showtimer = timer.toString();

        });
      });
    }

    void nextquestion (){
      timer = 30;
      setState(() {
       if (i < 5){
         i++;

       }else{

       }
       btncolor["a"] = Colors.blue;
       btncolor["b"] = Colors.blue;
       btncolor["c"] = Colors.blue;
     });
    }

    void checkanswer (String resp){
      if(dados[2]["1"] == dados[1]["1"][resp]){
        marks = marks + 5;
        colortoshow = right;

      }else{
        colortoshow = wrong;
      }
      setState(() {
        btncolor[resp] = colortoshow;

      });
      Timer(Duration(seconds: 2),nextquestion);
    }

    Widget choicebutton(String resp){
      return Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        child: MaterialButton(
          onPressed: () => checkanswer(resp),
          child: Text(
           dados[1][i.toString()][resp],
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Alike",
              fontSize: 16.0,
            ),
            maxLines: 1,
          ),
          color: btncolor[resp],
          highlightColor: Colors.blue[700],
          splashColor: Colors.blue[700],
          minWidth: 200.0,
          height: 45.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      );
    }
    @override
    Widget build (BuildContext context){
      return WillPopScope(
        onWillPop: (){
          return showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                "Quiz",
              ),
              content: Text(
                "Você não pode voltar."
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "OK",
                  ),
                )
              ],
            )
          );

        },
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Image(image: AssetImage("imagens/Ativ.png")),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,

                child: Text(
                  dados[0][i.toString()],
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    choicebutton('a'),
                    choicebutton('b'),
                    choicebutton('c'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topCenter,
                child: Center(
                  child: Text(
                    showtimer,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ),
              ),
            ),
          ],

        ),


      ),
      );

    }
  }
