import 'package:flutter/material.dart';

class ClubesPage extends StatelessWidget {
  const ClubesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Image.asset('images/logo.png'), // Adicione a imagem do logo aqui
        ),
        title: const Row(
          children: [
            Text(
              'Clubes',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              'Diretores Oanse',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(width: 20),
            Text(
              'Diretores de Clubes',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(width: 20),
            Text(
              'Secretários',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(width: 20),
            Text(
              'Líderes',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(width: 20),
            Text(
              'Oansistas',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/avatar.png'), // Substitua pelo avatar do usuário
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Judite da Silva',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Diretor Oanse',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
              const Icon(Icons.arrow_drop_down, color: Colors.black),
              const SizedBox(width: 20),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            buildCard('Ursinhos',
                'assets/ursinhos.png'), // Substitua pelo caminho correto da imagem
            buildCard('Tocha',
                'assets/tocha.png'), // Substitua pelo caminho correto da imagem
            buildCard('Faísca',
                'assets/faisca.png'), // Substitua pelo caminho correto da imagem
            buildCard('Jovens Vencedores',
                'assets/jovens_vencedores.png'), // Substitua pelo caminho correto da imagem
            buildCard('Flama',
                'assets/flama.png'), // Substitua pelo caminho correto da imagem
            buildCard('VQ7',
                'assets/vq7.png'), // Substitua pelo caminho correto da imagem
          ],
        ),
      ),
    );
  }

  // Método para criar os cards
  Widget buildCard(String title, String imagePath) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(imagePath,
                width: 50,
                height: 50), // Substitua pelo caminho correto da imagem
            const SizedBox(width: 20),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
