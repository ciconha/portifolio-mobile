import 'package:flutter/material.dart';

class EducacaoSection extends StatelessWidget {
  const EducacaoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      color: const Color(0xFF0F0F0F),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Educação',
            style: TextStyle(
              fontSize: 28,
              color: Color(0xFF00FFD1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 24),
          _CursoItem(
            curso: 'Ciências da Computação',
            instituicao: 'Centro universitário Braz Cubas',
            ano: '2023',
          ),
        ],
      ),
    );
  }
}

class _CursoItem extends StatelessWidget {
  final String curso;
  final String instituicao;
  final String ano;

  const _CursoItem({
    required this.curso,
    required this.instituicao,
    required this.ano,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            curso,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '$instituicao • $ano',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
