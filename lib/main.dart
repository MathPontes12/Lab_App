import 'package:flutter/material.dart';
import 'package:lfcpm_lab/Themes/my_themes.dart';
import 'package:lfcpm_lab/screens/home.dart';

void main() {
  runApp(const Lfcpm());
}

class Lfcpm extends StatelessWidget {
  const Lfcpm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LFCPM',          // titulo
      theme: colorthemes,
            // Pega o tema(cor) do componente colorthemes
      home: const Home(),            // primeira pagina exibida
          );
  }
}