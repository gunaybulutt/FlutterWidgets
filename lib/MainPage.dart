
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }

}

//MainPageState MainPge'in bir state'sidir
class MainPageState extends State<MainPage>{


  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(

      body: Center(
        child: Text(
          "Merhaba Telefon",
          textAlign: TextAlign.center,
          //2 satırdan fazlası gözükmez
          maxLines: 2,
          //3 nokta ekler eğer yazının devamı var ise
          overflow: TextOverflow.ellipsis,
          //yazı sağdon solamı yoksa soldan sağamı onu belirtir
          textDirection: TextDirection.rtl,

          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.red,
            backgroundColor: Colors.white,
            decoration: TextDecoration.underline,
          ),
        ),
      ),

    );

  }
}