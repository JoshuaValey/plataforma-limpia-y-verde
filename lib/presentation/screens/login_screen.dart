import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/appi_service.dart';
import 'package:plataforma_limpia_y_verde/presentation/widgets/green_button.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plataforma Limpia y Verde'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
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
                    child: TextField(
                      controller: usuarioController,
                      decoration: const InputDecoration(
                        labelText: 'Usuario',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: TextField(
                      controller: passController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                        labelText: 'Contraseña',
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 20),
                  GreenButton(
                      label: 'Iniciar Sesión',
                      onPressed: () async {
                        AppiService appiService =
                            AppiService(url: 'https://serviciolimpiaverde-bjb2c2g2a3gggggv.canadacentral-01.azurewebsites.net');
                        bool successful = await appiService.attemptLogin(
                            usuarioController.text, passController.text);
                        if (successful) {
                          Singleton.instance.showToast('Bienvenido');
                          // ignore: use_build_context_synchronously
                          Navigator.pushNamed(context, '/main_screen');
                        } else {
                          Singleton.instance
                              .showToast("Usuario o contraseña incorrecta");
                        }
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
