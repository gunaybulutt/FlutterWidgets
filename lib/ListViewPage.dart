import 'package:flutter/material.dart';
import 'package:temel_wiggets/sehir.dart';

class ListViewPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return ListViewPageState();
  }
  
}

class ListViewPageState extends State<ListViewPage> {

  List<Sehir> _sehirler = [
    Sehir("İstanbul",34, 15900000),
    Sehir("Ankara",6, 1900000),
    Sehir("İzmir",35, 5900000),
    Sehir("Bursa",16, 1200000),
    Sehir("Antalya",7, 132100000),
    Sehir("Konya",42, 100000),
    Sehir("Adana",1, 1100000),
    Sehir("Trabzon",61, 1595000),
    Sehir("Düzce",81, 15964500),
    Sehir("Edirne",22, 159006540),
    Sehir("Kocaeli",41, 14432343434),
    Sehir("Balikesir",10, 4324234234),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        //listenin uzunluğunu belirtir eğer belirtmessek liste oluşur ama oluşturulmayan kısımlar eror verir
        itemCount: _sehirler.length,
        itemBuilder: itemBuilder,
        
        ),
    );
  }

  //ListTile ile daha kolay ve güzel olan yöntem
  Widget itemBuilder(BuildContext context, int index){
    return Card(
      child: ListTile(
        title: Text(_sehirler[index].isim),
        subtitle: Text(_sehirler[index].nufus.toString()),
        trailing: Text(_sehirler[index].plakaKodu.toString()),
        leading: Icon(Icons.location_city),
      ),
    );
  }


}

//recyclerView'a benzeyen yöntem
/*
//int öge indexi
Widget itemBuilder(BuildContext context, int index){
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_sehirler[index].isim),
                SizedBox(height: 8),
                Text(_sehirler[index].nufus.toString()),
                SizedBox(height: 32),
              ],
             ),
          Text(_sehirler[index].plakaKodu.toString()),
          ],
        ),
      );
  }
*/

//buildersiz verimsiz ListView kullanim örneği
/*
ListView(children: [
        Container(
          width: double.infinity,
          height: 100,
          color: Colors.red,
        ),

        Container(
          width: double.infinity,
          height: 100,
          color: Colors.blue,
        ),

        Container(
          width: double.infinity,
          height: 100,
          color: Colors.green,
        ),
      ],),
*/