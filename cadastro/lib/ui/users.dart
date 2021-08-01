import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  //const Bemvindo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.blueAccent,
      child: new Center(
          child: new Text(
            "Aló, José!",
            textDirection: TextDirection.ltr,
            style: new TextStyle(fontSize: 30.0),
          ),
      ),
    );
  }
}
