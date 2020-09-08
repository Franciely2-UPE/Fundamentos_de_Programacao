import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_fund_programacao/tutorial.dart';


class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz de Programação"),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),



      body: Container(
        alignment: Alignment.topCenter,
        child: RaisedButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => tutorialpage()
                ));

          },

        child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("imagens/Tela1.png"))
          ],

        ),
    ),
      ),
    ),
    );


  }
}