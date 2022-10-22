import 'package:flutter/material.dart';
import 'package:projeto_rota/paginas/util.dart';

// class CadProd extends StatefulWidget {
//   const CadProd({Key? key}) : super(key: key);

//   @override
//   State<CadProd> createState() => _CadProdState();
// }

class CadProd extends StatelessWidget {
  TextEditingController nomeController = TextEditingController();
  TextEditingController valorController = TextEditingController();

  GlobalKey<FormState> formController = GlobalKey<FormState>();

  String msg = "Preencha os campos";

  enviarDados() {
    print('Enviar Dados');
    nomeController.text = "";
    valorController.text = "";
    msg = "Dados salvos com sucesso!";
  }

// }
// class _CadProdState extends State<CadProd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Produto'),
      ),
      body: Form(
        key: formController,
        child: Column(children: [
          const SizedBox(height: 20),
          Util().criaInputTexto(TextInputType.text, 'Nome(Obrigatório)',
              nomeController, 'Informe o nome do produto'),
          Util().criaInputTexto(TextInputType.number, 'Valor(Obrigatório)',
              valorController, 'Valor(Obrigatório)'),
          Util().criaInputTexto(TextInputType.text, 'Imagem', null,
              'Anexe uma imagem se disponível'),
          Util().criaInputTexto(
              TextInputType.text, 'Descrição', null, 'Descrição do produto'),
          Util().criaBotaoCadastro(formController, enviarDados, "Salvar"),
          Util().criaTexto(msg, null, null),
        ]),
      ),
    );
  }
}
