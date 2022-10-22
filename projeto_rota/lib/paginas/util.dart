import 'package:flutter/material.dart';

class Util {
  criaAppBar(titulo, tam, cor) {
    return AppBar(
      title: criaTexto(titulo, tam, cor),
      centerTitle: true,
    );
  }

  criaTexto(conteudo, tamanho, cor) {
    return Text(
      conteudo,
      style: TextStyle(
        fontSize: tamanho,
        color: cor,
      ),
    );
  }

  criaTextoField(titulo, senha, tipoTeclado, controlador) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
            controller: controlador,
            keyboardType: tipoTeclado,
            obscureText: senha,
            decoration: InputDecoration(
              labelText: titulo,
              border: const OutlineInputBorder(),
            )));
  }

  limparCampos() {
    print('Limpar Campos');
  }

  enviarDados() {
    print('Enviar Dados');
  }

  criaInputTexto(tipoTeclado, textoEtiqueta, controlador, msgValidacao) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        keyboardType: tipoTeclado,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: textoEtiqueta,
          labelStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        textAlign: TextAlign.center,
        controller: controlador,
        validator: (value) {
          if (value!.isEmpty) {
            return msgValidacao;
          }
        },
      ),
    );
  }

  criaBotao(rotulo, funcao, altura, largura) {
    return SizedBox(
      height: altura,
      width: largura,
      child: ElevatedButton(
        onPressed: funcao,
        child: criaTexto(rotulo, 20, Colors.white),
      ),
    );
  }

  criaBotaoCadastro(controladorFormulario, funcao, titulo) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            height: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () {
                if (controladorFormulario.currentState!.validade()) {
                  funcao;
                }
              },
              child: Text(
                titulo,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
