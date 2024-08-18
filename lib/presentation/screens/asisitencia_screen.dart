import 'package:flutter/material.dart';
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
  final projectID = ModalRoute.of(context)!.settings.arguments as int;

List<Operario> operarios = Singleton.instance.operarios.where(
  (element)=> element.idProyectoActual == projectID
).toList();


    return Scaffold(
      floatingActionButton: GreenButton(label: 'Grabar', onPressed: () {}), 
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
                Singleton.instance.showToast(operario.nombre);
              },
              child: ListTile(
              
                leading: const Icon(Icons.person),
                title: Text(operario.nombre),
                trailing: Checkbox(
                  value:  operario.isChecked,
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
