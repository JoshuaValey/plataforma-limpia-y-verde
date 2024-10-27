import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/config/theme/app_theme.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/aistencia_detalle_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/asignaciones_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/asisitencia_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/detalle_proyecto_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/insumos_id_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/login_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/main_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/proyectos_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/insumos_id_detalle_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/insumos_variables_screen.dart';
import 'package:plataforma_limpia_y_verde/presentation/screens/reporte_screen.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: AppTheme(selectedColor: 0).theme(),
       initialRoute: '/',
      routes: {
        '/main_screen': (context) => const MainScreen(),
        '/proyectos_screen': (context) => const ProyectosScreen(),
        '/asistencia_screen': (context) => const AsistenciaScreen(),
        '/detalle_proyecto_screen': (context) => const DetalleProyectoScreen(),
        '/asignaciones_screen': (context) => AsignacionesScreen(),
        '/insumos_id_screen' : (context) =>  const InsumosIdScreen(),
        '/insumos_id_detalle_screen' : (context) =>  const InsumosIdDetalleScreen(),
        '/insumos_variables_screen' : (context) =>  const InsumosVariablesScreen(),
        '/asistencia_detalle_screen' : (context) =>  const AsistenciaDetalleScreen(),
        '/reporte_screen' : (context) =>  const ReporteScreen(),

      },
      home: const LoginScreen(),
    );
  }
}


