import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandedPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExpandedPageState();
  }
  
}

class ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
      children: [
        
        //farklı ekranlara göre kalan kısımları kaplamasını sağlar
        //bu kullanıldığında önce expanded ile sarmalanmamış olan wigetleri yerleştiriyor ardından 
        //ise expanded olanlara kaln yerleri doldurtur
          Expanded(
            //oranlama
              flex: 1,
              child: Container(
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          
          //kafana göre dikey ve yatay eksende boşluklar oluşturmanı sağlar
          SizedBox(height: 30),

          Expanded(
              flex: 2,
              child: Container(
              width: double.infinity,
              color: Colors.blue,
            ),
          ),

          SizedBox(height: 30),

         Expanded(
              flex: 3,
              child: Container(
              width: double.infinity,
              color: Colors.green,
            ),
          ),
        ],
        
    ),
  );

  }
}

/* 
//bu tarz çözümler e işte seviyesindedir farklı ekran boyutlarında farklı sonuçlar verir
 SizedBox(
          width: 100, 
          child: TextField(

        ),
*/