import 'package:flutter/material.dart';


class ContainerPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ContainerPageState();
  }
}

class ContainerPageState extends State<ContainerPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: 250,
        height: 300,
        color: Colors.red,
        margin: EdgeInsets.only(top : 50, left : 20),
        //her taraftan 30 boşluk vardi
        padding: EdgeInsets.all(30),
        //yatay veya dikey olarak boşluk verir
        //padding: EdgeInsets.symmetric(horizontal: 30),

        child: Text(
          
          "Merhaba Telefon Merhaba Telefon Merhaba Telefon"
          "Merhaba Telefon Merhaba Telefon Merhaba Telefon"
          "Merhaba Telefon Merhaba Telefon Merhaba Telefon"
          "Merhaba Telefon Merhaba Telefon Merhaba Telefon"
          "Merhaba Telefon Merhaba Telefon Merhaba Telefon"
          "Merhaba Telefon Merhaba Telefon Merhaba Telefon"
          "Merhaba Telefon Merhaba Telefon Merhaba Telefon",
          textAlign: TextAlign.justify,

        ),

      )

    );
  }

}