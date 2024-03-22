import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ImagePageState();
  }
  
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/earth.png",
      width: 350,
      height: 350,
      //imageWidget'in boyutu resmin boyutundan yüksek olduğu için o alan içerisinde Aligment ile oynatabiliriz
      alignment: Alignment.topLeft,

      //resim ona verilen alanı kaplayacak kadar büyür
      //fit: BoxFit.cover,

      //eğer resim alana sığdırılma istenirken kare yada dikdörtgen olmasından dolayı sığmıyor ise bu kullanılır
      fit: BoxFit.fill,

      //resimin orantısını bozmadan
      //fit: BoxFit.contain,

      //değişik atraksonlar resimlere uygulanabilir
      //color: Color.fromARGB(255, 221, 0, 250),
      //colorBlendMode: BlendMode.colorDodge,
      ),
    
    );
  }
}