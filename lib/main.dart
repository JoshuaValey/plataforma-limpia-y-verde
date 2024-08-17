import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/asignaciones_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/asisitencia_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/detalle_proyecto_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/insumos_id_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/login_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/main_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/proyectos_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/insumos_id_detalle_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
       initialRoute: '/',
      routes: {
        '/main_screen': (context) => const MainScreen(),
        '/proyectos_screen': (context) => const ProyectosScreen(),
        '/asistencia_screen': (context) => const AsistenciaScreen(),
        '/detalle_proyecto_screen': (context) => const DetalleProyectoScreen(),
        '/asignaciones_screen': (context) => const AsignacionesScreen(),
        '/insumos_id_screen' : (context) =>  const InsumosIdScreen(),
        '/insumos_id_detalle_screen' : (context) =>  const InsumosIdDetalleScreen(),
      },
      home: const LoginScreen(),
    );
  }
}


