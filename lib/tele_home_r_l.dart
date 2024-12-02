import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconhecer_letras/reconhecer_letra2.dart';
import 'package:reconhecer_letras/reconhecer_letras.dart';

class PauseScreen extends StatelessWidget {
  const PauseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade600,
      appBar: AppBar(
        title: const Text('Pausa'),
        titleTextStyle: GoogleFonts.ubuntuMono(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue.shade600,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ReconhecerLetras2()),
                );
              },
              child: Text(
                'Voltar ao Jogo',
                style: GoogleFonts.ubuntuMono(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ReconhecerLetras()),
                );
              },
              child: Text(
                'Menu Principal',
                style: GoogleFonts.ubuntuMono(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
