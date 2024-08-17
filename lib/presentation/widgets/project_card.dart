import 'package:flutter/material.dart';




class ProjectCard extends StatelessWidget {
  final int id;
  final String nombre;
  final String descripcion;

  const ProjectCard(
      {required this.nombre,
      required this.descripcion,
      super.key,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/detalle_proyecto_screen', arguments: id);
        },
        child: Card(
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
                        nombre,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 8),
                      Text(descripcion),
                    ],
                  ),
                ),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu),
                      color: const Color.fromARGB(255, 57, 220, 95),
                      onPressed: () {
                        //navegar a la pantalla de asingaciones
                        Navigator.pushNamed(context, '/asignaciones_screen', arguments: id);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
