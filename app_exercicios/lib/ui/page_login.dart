import 'package:app_exercicios/ui/page_admin.dart';
import 'package:app_exercicios/ui/page_cadastrar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  //const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( "Bem Vindo"),
                TextField(
                  onChanged: (text){ email = text; },
                  decoration: InputDecoration(
                    labelText: 'E-mail'
                  ),
                ),
                TextField(
                  onChanged: (text){ senha = text; },
                  decoration: InputDecoration(
                      labelText: 'Senha'
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if( email == 'admin' && senha == '123' ){
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => PageAdmin()));
                          }else{}
                        },
                        child: Text('Entrar'),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => PageCadLogin()));
                        },
                        child: Text('Cadastrar'),
                      ),
                    ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}