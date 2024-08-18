import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_variable.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';

class InsumosVariablesScreen extends StatefulWidget {
  const InsumosVariablesScreen({super.key});
  @override
  State<InsumosVariablesScreen> createState() => _InsumosVariablesScreenState();
}

class _InsumosVariablesScreenState extends State<InsumosVariablesScreen> {
  @override
  Widget build(BuildContext context) {
    final proyectoID = ModalRoute.of(context)!.settings.arguments as int;

    List<InsumoVariable> insumos = Singleton.instance.insumosVariablesProject
        .where((element) => element.idProyecto == proyectoID)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Insumos variables'),
      ),
      body: ListView.builder(
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
    );
  }
}