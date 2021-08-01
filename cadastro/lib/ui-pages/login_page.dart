// Link:: https://www.youtube.com/watch?v=hO0XuT6iCz8
import 'package:cadastro/ui-pages/login_cadastro.dart';
import 'package:cadastro/ui/coluna.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/** Rota manual
    Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => Coluna()) );
 * link: Rota nomeadas https://www.youtube.com/watch?v=9olJ-lTSM8E  */

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

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
                Text("Bem Vindo",
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
                ElevatedButton( onPressed: () {
                    if(email == 'admin@admin.com' && password == '123'){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Coluna()));
                    }else{ print('E-mail ou senha inválidos!'); }
                  }, child: Text('Entrar'),
                ),
                SizedBox(height: 10),
                ElevatedButton( onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginCadastro())
                    );
                }, child: Text('Cadastrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
