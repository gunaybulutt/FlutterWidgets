import 'package:flutter/material.dart';

class ColumnRowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return _MyWidgetState();
  }
  
}

class _MyWidgetState extends State<ColumnRowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 123, 31, 245),
      ),

      // column widhetleri dikey row ise yatay olarak sıralar
      body: Column(
        //column içindeki widgetleri ayarlayabilmemizi sağlar
        //mainAxisAlignment: MainAxisAlignment.center,

        //axisAligment yapıları row ve column kullanımına göre değişir

        //column'un ana ekseninde cisimleri yerleştiri
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        //column'un ters ekseninde cisimleri yerleştirir
        //crossAxisAlignment: CrossAxisAlignment.end,

        //column kaplaması gerektiği kadar yer kaplasın anlamına geliyor
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
            ),

          //kafana göre dikey ve yatay eksende boşluklar oluşturmanı sağlar
          SizedBox(height: 10),

          Container(
          width: double.infinity,
          height: 50,
          color: Color.fromARGB(255, 152, 42, 241),
          ),

          SizedBox(height: 30),

          Container(
          width: 50,
          height: 50,
          color: Color.fromARGB(255, 18, 214, 93),
          ),
        ],
      ),
    );
  }
}