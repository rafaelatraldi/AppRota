import 'package:flutter/material.dart';
import 'package:projeto_rota/paginas/util.dart';
import 'lista_produto.dart';
import 'cad_cliente.dart';
import 'cad_produto.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('MENU'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              child: Text('Cadastrar Cliente'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CadCli();
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              child: Text('Cadastrar Produto'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CadProd();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
