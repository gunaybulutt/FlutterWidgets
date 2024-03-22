import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ButtonStatePage();
  }
  
}

class _ButtonStatePage extends State<ButtonPage> {

int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),


      body: Center(

        child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          Text(_sayac.toString(),
            style: TextStyle(
              fontSize: 48,

            ),
          ),



          ElevatedButton(
            child: Text("Sayacı Arttır"), 
            onPressed: _buttonTiklandi, 
            onLongPress: (){
              print("butona uzun tıklandı");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 30,
              ),
              //gölgelendirme
              elevation: 20,
              shape: RoundedRectangleBorder()
            ),
            ),
          
          
          //butonların yanına icon ekleyebiliyoruz fakat bazı değişiklikler var
          ElevatedButton.icon(
            label: Text("İkinci Buton"), 
            icon : Icon(Icons.watch),
            onPressed: (){
                setState(() {
                  _sayac++;
                });
            },
            
            ),


            //içi dolu olmayan etrafinda çerçeve olan buton şekli
            OutlinedButton.icon(
            label: Text("İkinci Buton"), 
            icon : Icon(Icons.watch),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.red),
              shape: StadiumBorder(),
              foregroundColor: Colors.green,
            ),
            onPressed: (){
                setState(() {
                  _sayac++;
                });
            },
            
            ),
        
          TextButton.icon(
            label: Text("İkinci Buton"), 
            icon : Icon(Icons.watch),
            style: TextButton.styleFrom(
              //side: BorderSide(color: Colors.red),
              shape: StadiumBorder(),
              foregroundColor: Colors.green,
            ),
            onPressed: (){
                setState(() {
                  _sayac++;
                });
            },
            
            ),

          IconButton(
            icon: Icon(Icons.check_circle),
            onPressed: _buttonTiklandi,
            iconSize: 45,
            color: Colors.green,
            ),
        ],

        ),
      ),

      //diğer öğelere göre yeri belirlenmez yeri sabittir o yerde kalır scaffold içine yazılır
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        backgroundColor: Colors.green,
        //birden fazla floatinActionButton varsa bu şekilde ayrılır
        heroTag: "up",
        onPressed: _buttonTiklandi,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }

  void _buttonTiklandi(){

    //yapacağı işlemi sayfayı yenileyerek yapar
    setState(() {
      _sayac++;
    });
  }
}