import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Projeto extends StatelessWidget {
  const Projeto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        width: 380,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage("lib/assets/Copilot_20250716_112454.png"),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "lib/assets/Copilot_20250716_113842.png",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "lib/assets/Copilot_20250716_113900.png",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
         
            Text(
              "Way-Out",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
        
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: [
                _buildTechChip("TypeScript"),
                _buildTechChip("React"),
                _buildTechChip("Python"),
                _buildTechChip("Dijkstra"),
                _buildTechChip("Expo"),
                _buildTechChip("Node.js"),
              ],
            ),
            const SizedBox(height: 20),
         
            Text.rich(
              TextSpan(
                style: TextStyle(color: Colors.white70, fontSize: 13),
                children: [
                  TextSpan(
                    text: "Olá, esse projeto ",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  TextSpan(
                    text:
                        "Foi desenvolvido para a evacuação em Ambientes comerciais\n Para encontrar uma rota mais segura para os usuários ",
                  ),
                  TextSpan(
                    text: "Esse projeto é uma simulação\n\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Como Funciona:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "- O usuário irá clicar em simulação\n"
                        "- Com isso ele irá analisar os locais que estão em perigo e os seguros\n"
                        "- Nisso ele irá clicar nos locais que estão em segurança, é o dijkstra vai calcular e entreguar o caminho mais curto e seguro.\n"
                        "- Com isso ele vai indicar o ponto de partida e de chegada, e os outros locais que o usuário tem que percorrer.\n\n",
                  ),
                  TextSpan(
                    text: "O repositorio estará disponível para uma análise mais completa!",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "🌟"),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 20),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIconButton(Icons.coffee, () {
                 launchUrl(Uri.parse('https://github.com/ciconha/Way-Out'));                  
                }),
                const SizedBox(width: 16),
                _buildIconButton(Icons.arrow_upward_rounded, () {
             
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTechChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Colors.grey[800],
        radius: 20,
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
