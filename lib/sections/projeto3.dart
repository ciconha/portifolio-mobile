import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Projeto3 extends StatelessWidget {
  const Projeto3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
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
                  backgroundImage: AssetImage("lib/assets/Copilot_20250718_192337.png"),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "lib/assets/Captura de tela de 2025-07-18 19-18-04.png",
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
                "lib/assets/Copilot_20250718_192911.png",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
       
            Text(
              "Rich-Text",
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
                _buildTechChip("HTML"),
                _buildTechChip("CSS"),
                _buildTechChip("JavaScript"),
              ],
            ),
            const SizedBox(height: 20),
      
            Text.rich(
              TextSpan(
                style: TextStyle(color: Colors.white70, fontSize: 13),
                children: [
                  TextSpan(
                    text: "Rich-Text é um projeto ",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  TextSpan(
                    text:
                        "focado em demonstrar o uso avançado de textos estilizados no CSS, utilizando o HTML RichText e estruturas com TextSpan. ",
                  ),
                  TextSpan(
                    text: "Ideal para apps que exigem controle visual sobre o texto!\n\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Como Funciona\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "- Exibe textos com múltiplos estilos, tamanhos\n"
                        "- Permite destacar trechos com negrito, itálico e sublinhado\n"
                        "- Pode ser usado em apps de leitura, blogs ou artigos\n"
                        "- Demonstra como construir layouts com texto dinâmico\n\n",
                  ),
                  TextSpan(
                    text: "O projeto está disponível para estudo e personalização! ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "✨"),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 20),
         
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIconButton(Icons.coffee, () {
                  launchUrl(Uri.parse('https://github.com/ciconha/Rich-Text'));
                }),
                const SizedBox(width: 16),
                _buildIconButton(Icons.arrow_upward_rounded, () {
                  launchUrl(Uri.parse('https://rich-text-liard.vercel.app/'));
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
        backgroundColor: Colors.grey[900],
        radius: 20,
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
