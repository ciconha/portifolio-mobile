import 'package:flutter/material.dart';
import 'sections/home.dart';
import 'sections/sobre.dart';
import 'sections/educacao.dart';
import 'sections/experiencia.dart';
import 'sections/projetos.dart';
import 'sections/skills.dart';
import 'sections/contato.dart';
import 'sections/projeto2.dart';
import 'sections/projeto3.dart';



void main() {
  runApp(const DuduPortfolio());
}

class DuduPortfolio extends StatelessWidget {
  const DuduPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfólio Dudu',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0B0C10),
        primaryColor: const Color(0xFF00FFD1),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      home: const MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HomeSection(),
            SobreSection(),
            EducacaoSection(),
            ExperienciaSection(),
            Projeto(),
            Projeto2(),
            Projeto3(),
            SkillsSection(),
            ContatoSection(),
          ],
        ),
      ),
    );
  }
}
