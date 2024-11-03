

import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/proyecto.dart';




class DetalleProyectoScreen extends StatelessWidget {
  const DetalleProyectoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //argumentos de la ruta
    final  proyect = ModalRoute.of(context)!.settings.arguments as Proyecto;
    return Scaffold(
       floatingActionButton: FloatingActionButton(
        
        onPressed: () {
          Navigator.pushNamed(context, '/main_screen');
        },
        backgroundColor: Colors.green,
         shape: const CircleBorder(),
        child: const Icon(Icons.home, color: Colors.white),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Detalles del Proyecto',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 16),
            _buildDetailField('Nombre', proyect.name),
            const SizedBox(height: 16),
            _buildDetailField('Área de cobertura', proyect.areaCobertura),
            const SizedBox(height: 16),
            _buildDetailField('Empresa',  proyect.empresa),
            const SizedBox(height: 16),
           const  Row(
              children: <Widget>[
                              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailField(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            value,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}

