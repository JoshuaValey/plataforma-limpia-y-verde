import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/operario.dart';

class AsistenciaDetalleScreen extends StatelessWidget {
  const AsistenciaDetalleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final operario = ModalRoute.of(context)!.settings.arguments as Operario;

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
                        Icons.person,
                        size: 48.0,
                        color: Colors.green[800],
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    
                    const SizedBox(height: 8.0),
                    
                    const SizedBox(height: 8.0),
                    Text(
                      'Rol: ${operario.rol}',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(height: 8.0),
                    
                    const SizedBox(height: 8.0),
                    
                    const SizedBox(height: 8.0),
                    Text(
                      'Empresa: ${operario.empresa}',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Fecha de Nacimiento: ${operario.fechaNacimiento.toLocal().toString().split(' ')[0]}',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(height: 8.0),
                    
                    const SizedBox(height: 8.0),
                    Text(
                      'Fecha de Inicio de Labores: ${operario.fechaInicioLabores.toLocal().toString().split(' ')[0]}',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(height: 8.0),
                    
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
