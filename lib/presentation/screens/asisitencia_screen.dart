import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/appi_service.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/operario.dart';
import 'package:plataforma_limpia_y_verde/presentation/widgets/green_button.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';

class AsistenciaScreen extends StatefulWidget {
  const AsistenciaScreen({super.key});

  @override
  State<AsistenciaScreen> createState() => _AsistenciaScreenState();
}

class _AsistenciaScreenState extends State<AsistenciaScreen> {
  @override
  Widget build(BuildContext context) {
    
    final projectID = ModalRoute.of(context)!.settings.arguments as String;

void postOperariosAsistencia() {
      AppiService(url: "http://localhost:5012/operario")
          .postOperarios(projectID)
          .then((value) {
        Singleton.instance.operarios = value;
        print(value);
      });
    }
    postOperariosAsistencia();
    List<Operario>? operariosPost = Singleton.getOperarios();

    List<Operario> operarios = operariosPost?.where((element) => element.idProyectoActual == projectID)
        .toList() ?? [];

    

    return Scaffold(
      floatingActionButton: GreenButton(
          label: 'Grabar',
          onPressed: () {
            Singleton.instance.operarioReporte = operarios;
            Singleton.instance.showToast('Grabando asistencia');
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text('Asistencia'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: operarios.length,
          itemBuilder: (context, index) {
            final operario = operarios[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/asistencia_detalle_screen',
                    arguments: operario);
              },
              child: ListTile(
                leading: const Icon(Icons.person),
                title: Text(operario.nombres),
                trailing: Checkbox(
                  value: operario.isChecked,
                  onChanged: (value) {
                    setState(() {
                      operarios[index].isChecked = value!;
                    });
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
