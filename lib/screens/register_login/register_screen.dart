import 'package:app_test/screens/enderecos/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
              'E-mail',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            new SizedBox(
              height: 20,
            ),
            new Container(
              padding: EdgeInsets.all(1),
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
              height: 20,
            ),
            new Text(
              'Usuario',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            new SizedBox(
              height: 20,
            ),
            new Container(
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.grey[400],
              ),
              child: new TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            new SizedBox(
              height: 20,
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
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.grey[400],
              ),
              child: new TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            new SizedBox(
              height: 20,
            ),
            new Text(
              'Confirmar Senha',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            new SizedBox(
              height: 20,
            ),
            new Container(
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.grey[400],
              ),
              child: new TextFormField(
                keyboardType: TextInputType.visiblePassword,
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
                  'Registrar',
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
          ],
        ),
      ),
    );
  }
}
