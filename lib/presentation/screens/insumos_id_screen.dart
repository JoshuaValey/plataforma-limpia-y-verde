import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/appi_service.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_fijo.dart';
import 'package:plataforma_limpia_y_verde/presentation/widgets/green_button.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';

class InsumosIdScreen extends StatefulWidget {
  const InsumosIdScreen({super.key});
  @override
  State<InsumosIdScreen> createState() => _InsumosIdScreenState();
}

class _InsumosIdScreenState extends State<InsumosIdScreen> {
  // Lista de insumos (puedes personalizarla o cargarla dinámicamente)


AppiService service = AppiService(url: Singleton.linkApiService);
Future<List<InsumoFijo>>? futureInsumosFijos;
List<InsumoFijo>? insumosFijos;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (futureInsumosFijos == null) {
    final proyectoID = ModalRoute.of(context)!.settings.arguments as String;
   futureInsumosFijos = service.postInsumosFijos(proyectoID);
      //futureInsumosFijos= service.post
    }
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insumos con ID'),
      ),
      floatingActionButton: GreenButton(
        label: 'Guardar',
        onPressed: () {
          //Singleton.instance.insumoFijoReporte = insumos;
          Singleton.setReporteInsumoFijo(insumosFijos);
          Singleton.instance.showToast('Guardado');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: FutureBuilder<List<InsumoFijo>>(
        future: futureInsumosFijos,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
         if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No hay insumos fijos disponibles'));
          } else {
            insumosFijos ??= snapshot.data!;
            return ListView.builder(
              itemCount: insumosFijos?.length,
              itemBuilder: (context, index) {
                final insumo = insumosFijos![index];
                return GestureDetector(
                  onTap: () {
                    // Maneja el clic en todo el elemento de la lista
                    Navigator.pushNamed(context, '/insumos_id_detalle_screen',
                        arguments: insumo);
                    Singleton.instance.showToast(insumo.nombre);
                  },
                  child: ListTile(
                    title: Text(insumo.nombre),
                    trailing: Checkbox(
                      value: insumo.checked,
                      onChanged: (bool? value) {
                        // Maneja el cambio en el checkbox sin interferir con el clic del elemento
                        setState(() {
                          insumosFijos![index].checked = value!;
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
    );
  }
}
/*

ListView.builder(
        itemCount: insumos.length,
        itemBuilder: (context, index) {
          final insumo = insumos[index];
          return GestureDetector(
            onTap: () {
              // Maneja el clic en todo el elemento de la lista
              Navigator.pushNamed(context, '/insumos_id_detalle_screen',
                  arguments: insumo);
              Singleton.instance.showToast(insumo.nombre);
            },
            child: ListTile(
              title: Text(insumo.nombre),
              trailing: Checkbox(
                value: insumo.checked,
                onChanged: (bool? value) {
                  // Maneja el cambio en el checkbox sin interferir con el clic del elemento
                  setState(() {
                    insumos[index].checked = value!;
                  });
                },
              ),
            ),
          );
        },
      ),

 */