import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/appi_service.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/proyecto.dart';
import 'package:plataforma_limpia_y_verde/presentation/widgets/project_card.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';


class ProyectosScreen extends StatefulWidget {
  const ProyectosScreen({super.key});

  @override
  State<ProyectosScreen> createState() => _ProyectosScreenState();
}

class _ProyectosScreenState extends State<ProyectosScreen> {

  AppiService service = AppiService(url: Singleton.linkApiService);
  List<Proyecto>? filterProyectos;

  String query = "";

  List<Proyecto>? proyectos;

  @override
  void initState() {
    super.initState();
    loadProyectos();
  }

 Future<void> loadProyectos() async {
    proyectos = await service.postProyectos(Singleton.idUsuario);
    setState(() {
      filterProyectos = proyectos;
    });
  }

  void updateFilter(String query) {
    setState(() {
      this.query = query;
      filterProyectos = proyectos?.where((proyecto) {
            return proyecto.name.toLowerCase().contains(query.toLowerCase()) ||
                proyecto.descripcion
                    .toLowerCase()
                    .contains(query.toLowerCase());
          }).toList() ??
          [];
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
                onChanged: (value) => updateFilter(value),
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
                child:filterProyectos == null
      ? const Center(child: CircularProgressIndicator())
      : filterProyectos!.isEmpty
          ? const Center(child: Text('No hay proyectos disponibles'))
          : ListView.builder(
              itemCount: filterProyectos!.length,
              itemBuilder: (BuildContext context, int index) {
                final proyectCard = filterProyectos![index];
                return ProjectCard(
                  id: proyectCard.id,
                  nombre: proyectCard.name,
                  descripcion: proyectCard.descripcion,
                );
              },
            ),
                
                           ),
              const SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
