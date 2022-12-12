import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import './questao.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntasSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntasSelecionada++;
    });

    print(_perguntasSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': [
          'preto',
          'vermelho',
          'verde',
          'branco',
        ],
      },
      {
        'texto': 'Qual o seu animal favorito?',
        'respostas': [
          'coelho',
          'cobra',
          'elefante',
          'leão',
        ],
      },
      {
        'texto': 'Qual o seu instrutor favorito?',
        'respostas': [
          'Maria',
          'Maaut',
          'Léo',
          'Filipi',
        ],
      }
    ];

    List<Widget> respostas = [];
    for (String textoResp in perguntas[_perguntasSelecionada]['respostas']) {
      respostas.add(Respostas(textoResp, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntasSelecionada]['texto']),
            ...respostas,
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
