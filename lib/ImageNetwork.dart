import 'package:flutter/material.dart';

class ImageNetworkPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyWidgetState();
  }
  
}

class _MyWidgetState extends State<ImageNetworkPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      //image'nin avatarlaşmasi
      body : CircleAvatar(
        backgroundImage: AssetImage(
          "assets/earth.png"
        ),

        //avatarImage boyut büyültme
        radius: 50,

        child: Text(

          "Dünya",

          style: TextStyle(
            color : Colors.black,
            fontSize: 20,
          ),
        ),
      ),

      /*
      body: Image.network("https://github.com/gunaybulutt/PlanetBook_Kotlin/blob/master/app/src/main/res/drawable/neptune.png"
      ),*/
    );
  }

}