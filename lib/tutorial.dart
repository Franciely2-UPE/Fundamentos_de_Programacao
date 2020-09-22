import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_fund_programacao/quizpage.dart';

  class tutorialpage extends StatefulWidget{
    @override
    _tutorialpageState createState() => _tutorialpageState();
}

  class _tutorialpageState extends State<tutorialpage>{
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

    Widget customcard(String langname, String imagens){
      return Padding(
        padding: EdgeInsets.all(
          20.0,
        ),
        child: InkWell(
          onTap:() {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => blocojson(),
            ));
          },
          child: Material(

            color: Colors.indigoAccent,
            elevation: 10.0,
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(100.0),
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        child:ClipOval(
                          child: Image(
                            fit: BoxFit.contain,
                            image: AssetImage(
                            imagens,
                          ),
                        ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      langname,
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontFamily: "Alike",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Esse fica no topo do código, é um bloco de início.",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "Alike"
                      ),
                      maxLines: 5,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "Tutorial"
          ),
        ),
        body: ListView(
          children: <Widget>[
            customcard("BLOCO DE EVENTOS", imagens[0]),
            customcard("BLOCO DE EVENTOS",imagens[1]),
            customcard("BLOCO DE CONTROLE",imagens[2]),
            customcard("BLOCO DE APARÊNCIA",imagens[3]),
            customcard("BLOCO DE CONTROLE",imagens[4]),
            customcard("BLOCO DE OPERADORES",imagens[5]),
            customcard("BLOCO DE OPERADORES",imagens[6]),
            customcard("BLOCO DE MOVIMENTO",imagens[7]),
            customcard("BLOCO DE APARÊNCIA",imagens[8]),
            customcard("BLOCO DE SENSORES",imagens[9]),
            customcard("BLOCO DE SONS",imagens[10]),
            customcard("BLOCO DE MOVIMENTO",imagens[11]),



          ],
        ),
      );
    }
}
