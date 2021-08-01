import 'package:flutter/material.dart';

void main(){
  runApp(
    new Material(
      color: Colors.blueAccent,
    child: new Center(
      child: new Text("Aló, João!!",
      textDirection: TextDirection.ltr,
        style: new TextStyle(fontSize: 84.0),
      ),
    ),
    ),
  );
}