import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  final Color accent = const Color(0xFF00FFD1);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF111111),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Skills & Tecnologias',
            style: TextStyle(
              fontSize: 28,
              color: Color(0xFF00FFD1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 24),
          _SkillGroup(
            titulo: 'Linguagens',
            items: ['JavaScript', 'Python', 'Java', 'SQL', 'TypeScript'],
          ),
          _SkillGroup(
            titulo: 'Frameworks & Bibliotecas',
            items: ['Node.js', 'Express', 'Flutter', 'Django'],
          ),
          _SkillGroup(
            titulo: 'Ferramentas',
            items: ['Docker', 'Git', 'Figma'],
          ),
          _SkillGroup(
            titulo: 'Bancos de Dados',
            items: ['PostgreSQL', 'MongoDB', 'SQLite', 'Firebase'],
          ),
        ],
      ),
    );
  }
}

class _SkillGroup extends StatelessWidget {
  final String titulo;
  final List<String> items;

  const _SkillGroup({required this.titulo, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: items
                .map(
                  (skill) => Chip(
                    label: Text(skill),
                    backgroundColor: Colors.teal.shade800,
                    labelStyle: const TextStyle(color: Colors.white),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
