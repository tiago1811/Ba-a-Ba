import 'package:flutter/material.dart';
import 'package:reconhecer_letras/reconhecer_letra2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reconhecer Letras',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ReconhecerLetras2(),
    );
  }
}