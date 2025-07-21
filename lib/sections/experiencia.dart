import 'package:flutter/material.dart';

class ExperienciaSection extends StatelessWidget {
  const ExperienciaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      color: const Color(0xFF101010),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Experiência Profissional',
            style: TextStyle(
              fontSize: 28,
              color: Color(0xFF00FFD1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 24),
          _JobItem(
            cargo: 'Monitor e Auxiliar',
            empresa: 'Centro Universitário Braz Cubas',
            periodo: '2023',
            tecnologias: 'JavaScripit, C++',
          ),
        ],
      ),
    );
  }
}

class _JobItem extends StatelessWidget {
  final String cargo;
  final String empresa;
  final String periodo;
  final String tecnologias;

  const _JobItem({
    required this.cargo,
    required this.empresa,
    required this.periodo,
    required this.tecnologias,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            cargo,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '$empresa • $periodo',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Tecnologias: $tecnologias',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}
