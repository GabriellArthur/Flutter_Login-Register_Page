import 'package:app_test/screens/enderecos/screens.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.grey[700],
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(),
        child: ListView(
          children: <Widget>[
            new Text(
              'E-mail ou nome de usuário',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            new SizedBox(
              height: 20,
            ),
            new Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.grey[400],
              ),
              child: new TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            new SizedBox(
              height: 50,
            ),
            new Text(
              'Senha',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            new SizedBox(
              height: 20,
            ),
            new Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.grey[400],
              ),
              child: new TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            new SizedBox(
              height: 50,
            ),
            new Container(
              width: 150,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              // ignore: deprecated_member_use
              child: FlatButton(
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
            ),
            new SizedBox(
              height: 20,
            ),
            new Container(
              width: 250,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              // ignore: deprecated_member_use
              child: FlatButton(
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    'Esqueceu a senha?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecuperarScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
