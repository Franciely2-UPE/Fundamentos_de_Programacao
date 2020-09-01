import 'package:flutter/material.dart';


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
        child: Column(
          children: <Widget>[
            Image(image: AssetImage("imagens/Tela.png"))
          ],
        ),
      ),

    );


  }
}