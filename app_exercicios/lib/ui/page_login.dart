import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                  decoration: InputDecoration(
                    labelText: 'E-mail'
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Senha'
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Entrar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
