import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_fijo.dart';

class InsumosIdDetalleScreen extends StatelessWidget {
  const InsumosIdDetalleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final insumo = ModalRoute.of(context)!.settings.arguments as InsumoFijo;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Insumo Detalle'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green[50],
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.build, // Icono más relevante para insumos
                        size: 48.0,
                        color: Colors.green[800],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Nombre: ${insumo.nombre}',
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    
                    const SizedBox(height: 8.0),
                    Text(
                      'Empresa: ${insumo.empresa}',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(height: 8.0),
                    
                    const SizedBox(height: 8.0),
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}