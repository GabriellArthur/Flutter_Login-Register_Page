import 'package:app_test/controllers/app_controller.dart';
import 'package:app_test/screens/enderecos/screens.dart';
import 'package:app_test/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class AppWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (builder, child) {
        return MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.black,
            brightness: AppController.instance.isDartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/loginRegister',
          routes: {
            '/loginRegister': (context) => LoginRegisterPage(),
            '/home': (context) => NavScreen(),
            '/config': (context) => ConfigPage(),
          },
        );
      },
    );
  }
}
