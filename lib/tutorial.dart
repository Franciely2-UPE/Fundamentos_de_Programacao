import 'package:flutter/material.dart';
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

    List<String> descricao = [
      " Esse fica no topo do código, é um bloco de início.",
      "Esse fica no topo do código, é um bloco de início, é utilizado para clicar no ator.",
      "Este bloco é utilizado para programar uma condição de (se) algo acontecer.",
      "Este bloco é utilizado para programar o dialogo dos atores, com esse bloco as falas ficarão visiveis.",
      "Com este bloco podemos programar um tempo de espera, nesse tempo a execução do programa fica pausada.",
      "Podemos juntar duas informações, que são adicionadas nos espaços em branco desse bloco. Para juntar informações precisamos utilizar o bloco junte.",
      "Para comparar de um número é maior que outro, precisamos utlizar esse bloco que contém o sinal de maior (>).",
      "Para mover um personagem precisamos utilizar o bloco mova e adicionar a quantidade de passos desejados.",
      "Para mudar de cenário temos o bloco próximo cenário.",
      "Podemos fazer uma pergunta para os atores, utilizando bloco pergunte.",
      "O bloco toque até o fim, pausa a execução do programa e fica apenas emitido o som até finaliza-lo.",
      "Quando os atores estão andando, precisamos proteger as bordas para que eles não saiam do cenário, por isso temos o bloco se tocar na borda, volte.",


    ];

    Widget customcard(String langname, String imagens, String descricao){
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
                      descricao,
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
            customcard("BLOCO DE EVENTOS", imagens[0], descricao[0]),
            customcard("BLOCO DE EVENTOS",imagens[1], descricao[1]),
            customcard("BLOCO DE CONTROLE",imagens[2], descricao[2]),
            customcard("BLOCO DE APARÊNCIA",imagens[3], descricao[3]),
            customcard("BLOCO DE CONTROLE",imagens[4], descricao[4]),
            customcard("BLOCO DE OPERADORES",imagens[5], descricao[5]),
            customcard("BLOCO DE OPERADORES",imagens[6], descricao[6]),
            customcard("BLOCO DE MOVIMENTO",imagens[7], descricao[7]),
            customcard("BLOCO DE APARÊNCIA",imagens[8], descricao[8]),
            customcard("BLOCO DE SENSORES",imagens[9], descricao[9]),
            customcard("BLOCO DE SONS",imagens[10], descricao[10]),
            customcard("BLOCO DE MOVIMENTO",imagens[11], descricao[11]),



          ],
        ),
      );
    }
}
