import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rows extends StatelessWidget {
//  const Coluna({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Entrar",
          textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),),
          new FlatButton(onPressed: ()=> "Hello",
            color: Colors.white70,
            child: Text(("Cadastrar"),)),
        ],
      )
    );
  }
}
