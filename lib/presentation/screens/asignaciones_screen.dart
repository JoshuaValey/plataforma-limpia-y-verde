import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/appi_service.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/reporte.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/reporte_inspector.dart';
import 'package:plataforma_limpia_y_verde/presentation/widgets/green_button.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';
import 'package:plataforma_limpia_y_verde/presentation/widgets/card_main_menu.dart';

class AsignacionesScreen extends StatelessWidget {
  AsignacionesScreen({super.key});


  final AppiService service = AppiService(url: Singleton.linkApiService);

  @override
  Widget build(BuildContext context) {
    //argumentos de la ruta
    final proyectoID = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      floatingActionButton: GreenButton(
          label: 'Enviar Reporte',
          onPressed: () {
             Reporte reporte = Reporte(
              proyectoId: proyectoID,
              inspectorId: Singleton.idUsuario,
              fechaReporte: DateTime.now(),
              insumosFijos: Singleton.reporteInsumoFijo,
              insumosVariables: Singleton.reporteInsumoVariable,
              operarios: Singleton.reporteOperario);

          service.postReporte(reporte);

            
          }),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text('Asignaciones'),
      ),
      body: Center(
        child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            //physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: Singleton.instance.asignacionesItems.map((element) {
              return CardMainMenu(
                id: proyectoID,
                routeName: element['routeName'],
                iconData: element['iconData'],
                label: element['label'],
                horizontalMargin: element['horizontalMargin'],
                verticalMargin: element['verticalMargin'],
              );
            }).toList()),
      ),
    );
  }
}
