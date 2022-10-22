import 'package:flutter/material.dart';
import 'package:projeto_rota/paginas/login.dart';
import 'package:projeto_rota/paginas/home.dart';
import 'package:projeto_rota/paginas/menu.dart';
import 'package:projeto_rota/paginas/lista_produto.dart';
import 'package:projeto_rota/paginas/cad_produto.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => Home(),
        '/menu': (context) => Menu(),
        '/lista_produto': (context) => ListaProd(),
        '/cad_produto': (context) => CadProd(),
        '/login: ': (context) => LoginPage(),
      },
    );
  }
}
