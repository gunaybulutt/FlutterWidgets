import 'package:flutter/material.dart';
import 'package:temel_wiggets/ButtonPage.dart';
import 'package:temel_wiggets/ColumnRowPage.dart';
import 'package:temel_wiggets/DropDownButton.dart';
import 'package:temel_wiggets/ExpandedPage.dart';
import 'package:temel_wiggets/ImageNetwork.dart';
import 'package:temel_wiggets/ImagePage.dart';
import 'package:temel_wiggets/ListViewPage.dart';
import 'package:temel_wiggets/MainPage.dart';
import 'package:temel_wiggets/TextFieldPage.dart';
import 'package:temel_wiggets/containerPage.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: DropDownButtonPage(),

    );
  }


}