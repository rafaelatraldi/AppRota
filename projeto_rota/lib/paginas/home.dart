import 'package:flutter/material.dart';
import 'package:projeto_rota/paginas/util.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Util().criaAppBar('Principal', 20, Colors.white),
      body: Container(
        color: Colors.white,
        child: Util().criaTexto('HOME', 30, Colors.grey),
      ),
    );
  }
}
