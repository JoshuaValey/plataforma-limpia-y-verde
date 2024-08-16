import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/proyecto.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';

class ProyectosScreen extends StatefulWidget {
  const ProyectosScreen({super.key});

  @override
  State<ProyectosScreen> createState() => _ProyectosScreenState();
}

class _ProyectosScreenState extends State<ProyectosScreen> {

List<Proyecto>? filterProyectos;

String query = "";

@override
void initState() {
   super.initState();
   filterProyectos = Singleton.instance.proyectos;
  }

void updateFilter(String query){
  setState(() {
  this.query = query;
      filterProyectos = Singleton.instance.proyectos.where((proyecto) {
        return proyecto.name.toLowerCase().contains(query.toLowerCase()) ||
            proyecto.descripcion.toLowerCase().contains(query.toLowerCase());
      }).toList();
  });
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {
          Navigator.pushNamed(context, '/main_screen');
        },
        backgroundColor: Colors.green,
         shape: const CircleBorder(),
        child: const Icon(Icons.home, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        title: const Text('Proyectos'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                onChanged:  (value) => updateFilter(value),
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
                child:  ListView.builder(
                    itemCount: filterProyectos!.length,
                    itemBuilder: (BuildContext context, int index) {
                      final proyecto = filterProyectos![index];
                      return ProjectCard(
                        id: proyecto.id,
                        nombre: proyecto.name,
                        descripcion: proyecto.descripcion,
                      );
                    },
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
