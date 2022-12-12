import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;

  final void Function() quandoSelecionado;
  const Respostas(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            textStyle: const TextStyle(color: Colors.white)),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
