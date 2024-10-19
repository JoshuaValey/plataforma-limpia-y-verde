import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/appi_service.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_variable.dart';
import 'package:plataforma_limpia_y_verde/presentation/widgets/green_button.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';

class InsumosVariablesScreen extends StatefulWidget {
  const InsumosVariablesScreen({super.key});
  @override
  State<InsumosVariablesScreen> createState() => _InsumosVariablesScreenState();
}

class _InsumosVariablesScreenState extends State<InsumosVariablesScreen> {

AppiService service = AppiService(url: Singleton.linkApiService);
Future<List<InsumoVariable>>? futureInsumosVariables;
List<InsumoVariable>? insumosVariables;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (futureInsumosVariables == null) {
    final proyectoID = ModalRoute.of(context)!.settings.arguments as String;
    futureInsumosVariables = service.postInsumosVariables(proyectoID);
      //futureInsumosVariables= service.post
    }
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Insumos variables'),
      ),
      floatingActionButton: GreenButton(
          label: 'Guardar',
          onPressed: () {
            //Singleton.instance.insumoVariableReporte = insumos;

            Singleton.instance.showToast('Guardado');
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: FutureBuilder<List<InsumoVariable>>(
        future: futureInsumosVariables, 
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No hay insumos variables disponibles'));
          } else {
            insumosVariables ??= snapshot.data!;
            return ListView.builder(
              itemCount: insumosVariables?.length,
              itemBuilder: (context, index) {
                final insumoVariable = insumosVariables![index];
                return ListTile(
                  title: Text(insumoVariable.nombre),
                  subtitle: Text("Cantidad: ${insumoVariable.cantidad}"),
                  trailing: Checkbox(
                    value: insumoVariable.checked,
                    onChanged: (bool? value) {
                      // Maneja el cambio en el checkbox sin interferir con el clic del elemento
                      setState(() {
                        insumosVariables![index].checked = value!;
                      });
                    },
                  ),
                );
              },
            );
          }
        }
        
        )
    );
  }
}




/*

ListView.builder(
        itemCount: insumos.length,
        itemBuilder: (context, index) {
          final insumo = insumos[index];
          return ListTile(
            title: Text(insumo.nombre),
            subtitle: Text("Cantidad: ${insumo.cantidad}"),
            trailing: Checkbox(
              value: insumo.checked,
              onChanged: (bool? value) {
                // Maneja el cambio en el checkbox sin interferir con el clic del elemento
                setState(() {
                  insumos[index].checked = value!;
                });
              },
            ),
          );
        },
      ),

 */
