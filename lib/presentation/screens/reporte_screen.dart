import 'package:flutter/material.dart';




class ReporteScreen extends StatelessWidget {
  const ReporteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: AppBar(
        title: const Text('Reporte'),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Text('Singleton.instance.reportes.toString()'),
        ),
      ),);
  }
}