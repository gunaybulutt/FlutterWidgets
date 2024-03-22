import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return TextFieldPageState();
  }
  
  
}

class TextFieldPageState extends State<TextFieldPage> {

  String _textYazisi = "Yazıyı Değiştir";
  //bu controller her harf girildiğinde fonksiyonun çalıştırılmamasını sağlar
  TextEditingController _controller = TextEditingController();
  //String _textFieldYazisi = "";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Center(

        child : Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            
            //performanssız yöntem nedeni aşağıda not olarak yazıyor
            /*
            TextField( onChanged: (String yeniYazi){
                _textFieldYazisi = yeniYazi;
              }
            ),*/
              
              //bildimiz padding
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _controller,
                //veri girişi için kullanılan klavyenin türünü değiştirir mesela bu kod 
                //sadece rakamların çıkmasını sağlar.
                keyboardType: TextInputType.number,
                //maksimum dört satır görünmesini sağlar.
                maxLines: 1,
                //boştayken bile 2 satır gibi görünür
                minLines: 1,
                //parola görünümü sağlar
                obscureText: false,
                
                // TextFiedl'i pasif hale getirir.
                //enabled : false,
              
                //ekran açılır açılmaz odak noktası yapma
                autofocus: false,
              
                //textfiedlda çevçeve yapabiliriz 
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //etrafi yuvarlaklaştırır
                    borderRadius: BorderRadius.circular(36)
                  ),
                  //hilt gibi düşünülebilir
                  labelText: "Adınızı Giriniz",
                  //alta küçük uyarı koyma
                  counterText: "Bir Metin Girin",
                  counterStyle: TextStyle(color : Colors.red),
                  counter: Icon(Icons.message),
                ),
              
              ),
            ),

            Text(_textYazisi),


            ElevatedButton( 
              child: Text("Yazıyı Değiştir"),
              onPressed: (){
                setState(() {
                  _textYazisi = _controller.text.toString();
                });
              },
            ),

          ],
        ),
        
        ),
    );
  }

}

/*
NOT: OnChange metodu girilen her harf için fonksiyonu tekrar tekrar çalıştırıyor bu nedenle
performans kaybını önleyebilmek için controller kullanılır.
 */