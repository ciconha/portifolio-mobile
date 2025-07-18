import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContatoSection extends StatelessWidget {
  const ContatoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0B0C10),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
      child: Column(
        children: [
          const Text(
            'Entre em contato',
            style: TextStyle(
              fontSize: 28,
              color: Color(0xFF00FFD1),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Você pode me encontrar aqui:',
            style: TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 24,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              _IconLink(
                icon: FontAwesomeIcons.github,
                url: 'https://github.com/ciconha',
              ),
              _IconLink(
                icon: FontAwesomeIcons.linkedin,
                url: 'https://www.linkedin.com/in/eduardo-ciconha/',
              ),
              _IconLink(
                icon: FontAwesomeIcons.envelope,
                url: 'eduardo.ciconha@hotmail.com',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _IconLink extends StatelessWidget {
  final IconData icon;
  final String url;

  const _IconLink({required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrl(Uri.parse(url)),
      child: FaIcon(icon, color: Colors.white, size: 32),
    );
  }
}
