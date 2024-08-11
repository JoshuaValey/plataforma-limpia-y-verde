import 'package:flutter/material.dart';

class ProyectosScreen extends StatelessWidget {
  const ProyectosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proyectos'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: const [
                    ProjectCard(
                      title: 'Nombre Proyecto 1',
                      description:
                          'Descripcion de un proyecto de prueba demostrativamente puede colocar direccion, detalles del proyecto, etc.',
                    ),
                    ProjectCard(
                      title: 'Nombre Proyecto 2',
                      description:
                          'Descripcion de un proyecto de prueba demostrativamente puede colocar direccion, detalles del proyecto, etc.',
                    ),
                    ProjectCard(
                      title: 'Nombre Proyecto 3',
                      description:
                          'Descripcion de un proyecto de prueba demostrativamente puede colocar direccion, detalles del proyecto, etc.',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                   
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 16.0),
                ),
                child: const Text('Nuevo proyecto',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;

   const ProjectCard({required this.title, required this.description, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Text(description),
                ],
              ),
            ),
            Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.menu),
                  color: Colors.lime,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.edit),
                  color: Colors.cyan,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.assistant),
                  color: Colors.red,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
