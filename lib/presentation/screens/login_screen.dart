import 'package:flutter/material.dart';




class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Plataforma Limpia y Verde'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                image: AssetImage('assets/Logomuni1.png'),
                height: 300,
                width: 300,
              ),
              const SizedBox(height: 50),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Usuario',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
          
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  //TODO: Implementar la lógica de autenticación
                onPressed: () {
                  // navegar al main screen
                  Navigator.pushNamed(context, '/main_screen');
                },
                child:const Text('Iniciar Sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}