import 'package:flutter/material.dart';

class SobreSection extends StatelessWidget {
  const SobreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
      color: const Color(0xFF0B0C10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sobre mim',
            style: TextStyle(
              fontSize: 32,
              color: Color(0xFF00FFD1),
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Sou desenvolvedor back-end apaixonado por resolver problemas com código limpo e performático. Tenho experiência com Node.js, SQL, containers Docker e APIs REST. Estou sempre estudando novas tecnologias e gosto de compartilhar conhecimento com a comunidade.',
            style: TextStyle(fontSize: 16, color: Colors.white70, height: 1.6),
          ),
          const SizedBox(height: 32),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'lib/assets/20250127_151330.jpg',
                width: 240,
                height: 290,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
