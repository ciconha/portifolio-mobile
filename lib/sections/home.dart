import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      color: const Color(0xFF0B0C10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'du.Ciconha',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white70,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Desenvolvedor Back-end',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'Meu objetivo é escrever códigos limpos, escaláveis e sustentáveis, contribuindo para projetos sólidos e bem estruturados. Busco constantemente aprimorar minhas habilidades para tornar o desenvolvimento não apenas eficiente, mas também colaborativo.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                letterSpacing: 1.1,
                height: 1.6,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 24,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              _SocialIcon(
                label: 'GitHub',
                icon: FontAwesomeIcons.github,
                url: 'https://github.com/ciconha',
              ),
              _SocialIcon(
                label: 'LinkedIn',
                icon: FontAwesomeIcons.linkedin,
                url: 'https://www.linkedin.com/in/eduardo-ciconha/',
              ),
              _SocialIcon(
                label: 'Email',
                icon: FontAwesomeIcons.envelope,
                url: 'eduardo.ciconha@hotmail.com',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final String label;
  final IconData icon;
  final String url;

  const _SocialIcon({
    required this.label,
    required this.icon,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrl(Uri.parse(url)),
      borderRadius: BorderRadius.circular(50),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white12,
            ),
            child: FaIcon(icon, color: Colors.white, size: 22),
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
