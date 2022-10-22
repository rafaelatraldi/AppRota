import 'package:flutter/material.dart';
import 'package:projeto_rota/paginas/util.dart';

class CadCli extends StatelessWidget {
  limparCampos() {
    print('Limpar Campos');
  }

  enviarDados() {
    print('Enviar Dados');
  }

  @override
  Widget build(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Cliente'),
      ),
      body: Column(children: [
        const SizedBox(height: 20),
        Util().criaInputTexto(
            TextInputType.text, 'Nome', null, 'Informe seu nome'),
        Util().criaInputTexto(
            TextInputType.text, 'E-mail', null, 'Informe seu e-mail'),
        Util().criaInputTexto(
            TextInputType.text, 'Senha', null, 'Crie uma senha'),
        Util().criaBotao("Cadastrar Cliente", enviarDados, 50, double.infinity),
      ]),
    );
  }
}
