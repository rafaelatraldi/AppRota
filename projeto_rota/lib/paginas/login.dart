import 'package:flutter/material.dart';
import 'package:projeto_rota/paginas/util.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    fazLogin() {
      if (txtEmail.text == 'admin') {
        Navigator.of(context).pushNamed('/menu');
        print('CLIENTE ${txtEmail} - ${txtSenha}');
      } else {
        if (txtEmail.text == 'cliente') {
          Navigator.of(context).pushNamed('/lista_produto');
          print('ADMIN ${txtEmail} - ${txtSenha}');
        }
      }
    }

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Util().criaTextoField(
                'Email', false, TextInputType.emailAddress, txtEmail),
            Util().criaTextoField('Senha', true, TextInputType.none, txtSenha),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Util().criaBotao("Entrar", fazLogin, 50, double.infinity),
            )
          ],
        ),
      ),
    );
  }
}
