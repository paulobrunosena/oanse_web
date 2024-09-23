import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtém a largura da tela
    var screenWidth = MediaQuery.of(context).size.width;

    // Define o ponto de corte para telas móveis e desktop
    bool isMobile = screenWidth < 800;

    return Scaffold(
      body: isMobile ? buildMobileLayout() : buildDesktopLayout(),
    );
  }

  // Layout para telas móveis (apenas uma coluna)
  Widget buildMobileLayout() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Campo de Login
            TextField(
              decoration: InputDecoration(
                labelText: 'Login',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 20),
            // Campo de Senha
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 20),
            // Botão Entrar
            ElevatedButton(
              onPressed: () {
                // Ação de login
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow[700], // Cor amarela
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'ENTRAR',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Esqueci minha senha
            TextButton(
              onPressed: () {
                // Ação de esquecer senha
              },
              child: Text(
                'Esqueci minha senha.',
                style: TextStyle(
                  color: Colors.yellow[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Layout para telas de desktop (duas colunas)
  Widget buildDesktopLayout() {
    return Row(
      children: [
        // Esquerda com o logotipo e o padrão geométrico
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200], // Cor de fundo com leve gradiente
              image: const DecorationImage(
                image: AssetImage(
                    'images/pattern_bg.jpg'), // Adicione sua imagem de padrão geométrico aqui
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Image.asset(
                'images/logo.png', // Coloque o caminho para o logotipo
                width: 200,
                height: 200,
              ),
            ),
          ),
        ),
        // Direita com os campos de login
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Campo de Login
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Login',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: const Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 20),
                // Campo de Senha
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: const Icon(Icons.lock),
                  ),
                ),
                const SizedBox(height: 20),
                // Botão Entrar
                ElevatedButton(
                  onPressed: () {
                    // Ação de login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[700], // Cor amarela
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'ENTRAR',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // Esqueci minha senha
                TextButton(
                  onPressed: () {
                    // Ação de esquecer senha
                  },
                  child: Text(
                    'Esqueci minha senha.',
                    style: TextStyle(
                      color: Colors.yellow[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
