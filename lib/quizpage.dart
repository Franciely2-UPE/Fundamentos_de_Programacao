  import 'dart:async';
  import 'dart:convert';
  import 'package:flutter/material.dart';
  import 'package:flutter_app_fund_programacao/resultpage.dart';


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
    List<String> imagens = [
      "imagens/bandeira.png",
      "imagens/1.png",
      "imagens/codicao.png",
      "imagens/diga.png",
      "imagens/espere.png",
      "imagens/junte.png",
      "imagens/maior.png",
      "imagens/mova.png",
      "imagens/p.cenario.png",
      "imagens/pergunta.png",
      "imagens/som.png",
      "imagens/tocar_borda.png",


    ];
    var dados;
    _quizpageState(this.dados);

    Color colortoshow = Colors.indigo;
    Color right = Colors.green;
    Color wrong = Colors.red;
    int marks = 0;
    int i = 1;
    int timer = 30;
    String showtimer = "30";

    Map<String, Color> btncolor = {
      "a" : Colors.indigo,
      "b" : Colors.indigo,
      "c" : Colors.indigo,
    };

    bool canceltimer = false;

    @override
    void initState(){
      starttimer();
      super.initState();
    }

    void starttimer()async{
      const onesec = Duration(seconds: 1);
      Timer.periodic(onesec, (Timer t) {
        setState(() {
          if(timer < 1){
            t.cancel();
            nextquestion();
          }else if(canceltimer == true){
            t.cancel();

          }else{
            timer = timer -1;
          }
          showtimer = timer.toString();
        });
      });
    }

    void nextquestion () {
      canceltimer = false;
      timer = 30;
      setState(() {
        if(i < 10){
          i++;
        } else {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) =>resultpage(marks : marks),
          ));

        }
        btncolor["a"] = Colors.indigo;
        btncolor["b"] = Colors.indigo;
        btncolor["c"] = Colors.indigo;

      });
      starttimer();
    }

    void checkanswer (String resp){
      if(dados[2]["1"] == dados[1]["1"][resp]){
        marks = marks + 10;
        colortoshow = right;
      }else{
        colortoshow = wrong;
      }
      setState(() {
        btncolor[resp] = colortoshow;
        canceltimer = true;
      });

      Timer(Duration(seconds: 2), nextquestion);

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
          splashColor: Colors.indigo[700],
          highlightColor: Colors.indigo[700],
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
                      fontSize: 35.0,
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
