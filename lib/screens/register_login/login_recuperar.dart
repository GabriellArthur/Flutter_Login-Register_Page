import 'package:app_test/screens/enderecos/screens.dart';
import 'package:flutter/material.dart';

class RecuperarScreen extends StatefulWidget {
  @override
  _RecuperarPageState createState() => _RecuperarPageState();
}

class _RecuperarPageState extends State<RecuperarScreen> {
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
                  'Enviar',
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
