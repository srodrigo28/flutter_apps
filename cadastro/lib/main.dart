import 'package:cadastro/ui-pages/login_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blueAccent,
      //home: new Bemvindo(),
      home: new LoginPage()
    ));
}