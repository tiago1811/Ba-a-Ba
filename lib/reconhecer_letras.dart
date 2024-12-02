import 'dart:math';

import 'package:flutter/material.dart';

class ReconhecerLetras extends StatelessWidget {
  const ReconhecerLetras({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de imagens disponíveis.
    final List<String> letras = [
      'a.png',
      'b.png',
      'c.png',
      'd.png',
      'e.png',
      'f.png',
      'g.png',
      'h.png',
      'i.png',
      'j.png',
      'k.png',
      'l.png',
      'm.png',
      'n.png',
      'o.png',
      'p.png',
      'q.png',
      'r.png',
      's.png',
      't.png',
      'u.png',
      'v.png',
      'x.png',
      'w.png',
      'y.png'
    ];

    // Seleciona uma imagem aleatória para a primeira linha.
    final String imagemAleatoria = letras[Random().nextInt(letras.length)];

    // Gera uma lista de 4 imagens para a segunda linha.
    List<String> segundaLinha = [];
    List<String> terceiraLinha = [];
    segundaLinha.add(imagemAleatoria);
    terceiraLinha.add(imagemAleatoria);
    segundaLinha.add(imagemAleatoria);
    terceiraLinha.add(imagemAleatoria); // Adiciona a imagem da primeira linha.

    // Adiciona outras imagens aleatórias que sejam diferentes da escolhida.
    while (segundaLinha.length < 2) {
      String imagem = letras[Random().nextInt(letras.length)];
      if (!segundaLinha.contains(imagem)) {
        segundaLinha.add(imagem);
        terceiraLinha.add(imagem);
      }
    }

    // Embaralha a lista da segunda linha.
    segundaLinha.shuffle();
    terceiraLinha.shuffle();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('Linha com imagens aleatórias'),
            backgroundColor: Colors.blueAccent.shade100,
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(50, 50, 50, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Primeira linha com a imagem aleatória.
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white,
                      height: 50,
                      width: 00,
                      child: Image.asset(
                        'letras_ma/$imagemAleatoria', // Caminho da imagem aleatória.
                        width: 20.0,
                        height: 20.0,
                      ),
                    ),
                  ],
                ),
                // Segunda linha com 4 imagens (uma igual à de cima).
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 50, 50, 80),
                  child: Column(
                    // Usando Column para empilhar linhas verticalmente.
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: segundaLinha.map((imagem) {
                          return Container(
                            color: const Color.fromARGB(255, 241, 164, 164),
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              'letras_ma/$segundaLinha', // Caminho das imagens da segunda linha.
                              width: 100.0,
                              height: 100.0,
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: terceiraLinha.map((imagem) {
                          return  Container(
                          color: const Color.fromARGB(255, 241, 164, 164),
                          height: 80,
                          width: 80,
                          child: Image.asset(
                            'letras_ma/$segundaLinha', // Caminho das imagens da segunda linha.
                            width: 100.0,
                            height: 100.0,
                          ),
                        );
                      }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
