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
  final AppiService service = AppiService(url: Singleton.linkApiService);

  Future<List<Operario>>?futureOperarios;
  List<Operario>? operarios;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (futureOperarios == null) {
      final projectID = ModalRoute.of(context)!.settings.arguments as String;
      futureOperarios = service.postOperarios(projectID);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GreenButton(
          label: 'Grabar',
          onPressed: () {
            //Singleton.instance.operarioReporte = operarios;
            Singleton.instance.showToast('Grabando asistencia');
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text('Asistencia'),
      ),
      body: SafeArea(
        child: FutureBuilder<List<Operario>>(
          future: futureOperarios,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error ${snapshot.error}'),
              );
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No hay operarios disponibles'));
            } else {

                operarios ??= snapshot.data!;

              return ListView.builder(
                itemCount: operarios?.length,
                itemBuilder: (context, index) {
                  final operario = operarios?[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/asistencia_detalle_screen',
                          arguments: operario); // Envia el objeto completo
                    },
                    child: ListTile(
                      leading: const Icon(Icons.person),
                      title: Text(operario!.nombres),
                      trailing: Checkbox(
                        value: operario.isChecked,
                        onChanged: (value) {
                          setState(() {
                            operarios![index].isChecked = value!;
                          });
                        },
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
