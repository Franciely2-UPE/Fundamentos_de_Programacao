  import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_fund_programacao/splashs.dart';


  void main(){
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    runApp(MyApp());
  }


  class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Quiz de Programação em Blocos",
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),

          home: splashscreen(),
      );

    }
  }
