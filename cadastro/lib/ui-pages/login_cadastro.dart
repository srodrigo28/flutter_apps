// Link:: https://www.youtube.com/watch?v=hO0XuT6iCz8
import 'package:cadastro/ui-pages/inputs_types.dart';
import 'package:cadastro/ui/coluna.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/** Rota manual
    Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => Coluna()) );
 * link: Rota nomeadas https://www.youtube.com/watch?v=9olJ-lTSM8E  */

class LoginCadastro extends StatefulWidget {
  const LoginCadastro({Key? key}) : super(key: key);
  @override
  _LoginCadastroState createState() => _LoginCadastroState();
}
class _LoginCadastroState extends State<LoginCadastro> {
  String email = '';
  String password = '';
  String confirma_password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          //width: double.infinity,
          //height: double.infinity,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Cadastre-se",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),),
                SizedBox(height: 50),
                TextField(
                  onChanged: (text){ email = text; },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text){ password = text; },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text){ password = text; },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Confirmar Senha',
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    //criar validações
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder:
                        (context) => LoginPage())
                      );
                    //criar validações
                  },
                  child: Text('Cadastrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
