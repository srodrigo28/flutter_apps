import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Coluna extends StatelessWidget {
//  const Coluna({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Primeiro",
          textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),),
          Text("Segundo",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),),
          Text("Terceiro",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),),
          //new FlatButton(onPressed: ()=> "Hello",
          //  color: Colors.white70,
          //  child: Text(("Cadastrar"),)),
        ],
      )
    );
  }
}
