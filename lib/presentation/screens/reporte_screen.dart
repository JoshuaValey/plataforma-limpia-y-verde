import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';




class ReporteScreen extends StatelessWidget {
  const ReporteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: AppBar(
        title: const Text('Reporte'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text(Singleton.instance.reportes.toString()),
        ),
      ),);
  }
}