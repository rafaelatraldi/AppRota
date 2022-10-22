import 'package:flutter/material.dart';
import 'package:projeto_rota/paginas/login.dart';
import 'package:projeto_rota/paginas/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => Home(),
      },
    );
  }
}
