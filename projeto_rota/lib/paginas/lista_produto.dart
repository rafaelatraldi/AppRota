import 'package:flutter/material.dart';
import 'package:projeto_rota/paginas/util.dart';

class ListaProd extends StatelessWidget {
  const ListaProd({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Cadastro de Produto';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(21, (index) {
            return Center(
              child: Text(
                'Produto $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
      ),
    );
  }
}
