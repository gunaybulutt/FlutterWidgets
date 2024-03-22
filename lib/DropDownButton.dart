import 'package:flutter/material.dart';

class DropDownButtonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DropDownButtonPageState();
  }
  
}

class DropDownButtonPageState extends State<DropDownButtonPage> {

List<String> _seirler = [
  "istanbul",
  "Ankara",
  "İzmir",
  "Tekirdağ",
  "Düzce"
];

  //listedeki bir değer olmak zorunda
  String _secilenSehir = "istanbul";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 123, 31, 245),),
      body : Center(
        child: DropdownButton<String>(
          //üzerinde duracak string
          value: _secilenSehir,
        
          //içinde duracak string
          //bu map fonksiyonu _seirler listesini gezen ve her fonskiyon için fonksiyon döndüren
          //bir fonksiyondur map veri türü değil
          //listView'da builder bu işlemi otomatik yapılıyodu ama DropdownButton'da manuel yapıyoruz
          items: _seirler.map((String sehir){
            return DropdownMenuItem<String>(
              value: sehir,
              child: Text(sehir),
              );
          }).toList(),
        
          onChanged: _sehirDegistir,
          icon: Icon(Icons.location_city),
          iconSize: 30,
          dropdownColor: Colors.amber,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontStyle: FontStyle.italic,
          ),
          underline: Container(
            height: 5,
            color: Colors.red,
          ),
          itemHeight: 50,
          ),
      ),
    );
  }

  void _sehirDegistir(String? newCity){

    setState(() {
      if(newCity != null){
      _secilenSehir = newCity;
    }
    });
  }
}


//verimsiz yöntem
/*
items: [
          DropdownMenuItem<String>(
            value: _seirler[0],
            child: Text(_seirler[0]),
            ),
            DropdownMenuItem<String>(
            value: _seirler[1],
            child: Text(_seirler[1]),
            ),
            DropdownMenuItem<String>(
            value: _seirler[2],
            child: Text(_seirler[2]),
            ),
            DropdownMenuItem<String>(
            value: _seirler[3],
            child: Text(_seirler[3]),
            ),
        ],
*/