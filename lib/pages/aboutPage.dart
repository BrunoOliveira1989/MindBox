import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  Future<void> _launchGitHub() async {
    final Uri url = Uri.parse('https://github.com/BrunoOliveira1989/MindBox');

    // Verifica se o link pode ser lançado
    if (await canLaunchUrl(url)) {
      // Lança o link no navegador
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication, // Abre no navegador externo
      );
    } else {
      throw 'Não foi possível abrir o link: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF003F5C),
        title: const Text('Sobre MindBox'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'MindBox',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF003F5C),
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Desenvolvedores:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003F5C),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Bruno, Luis Felipe, Tiago',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Curso:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003F5C),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '5° semestre de Desenvolvimento de Software Multiplataforma',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            const Text(
              'FATEC Itapira',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Professor:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003F5C),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Douglas',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'GitHub:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003F5C),
              ),
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: _launchGitHub,
              child: const Text(
                'https://github.com/BrunoOliveira1989/MindBox',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}