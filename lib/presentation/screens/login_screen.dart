import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/appi_service.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/usuario.dart';
import 'package:plataforma_limpia_y_verde/presentation/widgets/green_button.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controladores para los campos de texto
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // Limpiar los controladores cuando el widget se destruya
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppiService apiService = AppiService(url: Singleton.linkApiService);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Plataforma Limpia y Verde'),
        leading: IconButton(
          icon: const Icon(Icons.logout),
          color: Colors.white,
          onPressed: () {
            // Acción al presionar el icono de logout
          },
        ),
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
                      controller: _usernameController, // Asignar controlador
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
                      controller: _passwordController, // Asignar controlador
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
                    onPressed: () {
                      // Obtener los valores de los campos de texto
                     
                      String usuario  =  _usernameController.text;
                      String contrasenia = _passwordController.text;

                      if (usuario.isEmpty || contrasenia.isEmpty) {
                        // Validación simple
                        Singleton.instance.showToast('Por favor ingrese usuario y contraseña');
                        return;
                      }

                      Usuario usuarioLogin = Usuario(
                      id: "",
                      nombreUsuario: usuario,
                      contrasenia: contrasenia,
                      rol: "",
                      );

                      // Llamar a la API o hacer alguna acción con los datos
                      apiService.login(usuarioLogin, '/usuario/iniciarsesion').then((response) {
                        if (response.rol == "Monitor") {
                          Singleton.idUsuario = response.id;
                          Navigator.pushNamed(context, '/main_screen');
                          Singleton.instance.showToast('Bienvenido');
                        } else {
                          Singleton.instance.showToast('Credenciales incorrectas');
                        }
                      }).catchError((e) {
                        Singleton.instance.showToast('Error al intentar iniciar sesión');
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
