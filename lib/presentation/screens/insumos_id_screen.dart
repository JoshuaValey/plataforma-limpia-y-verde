import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_fijo.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';

class InsumosIdScreen extends StatefulWidget {
  const InsumosIdScreen({super.key});
  @override
  State<InsumosIdScreen> createState() => _InsumosIdScreenState();
}

class _InsumosIdScreenState extends State<InsumosIdScreen> {
  // Lista de insumos (puedes personalizarla o cargarla dinámicamente)

  @override
  Widget build(BuildContext context) {
    final proyectoID = ModalRoute.of(context)!.settings.arguments as int;

    List<InsumoFijo> insumos = Singleton.instance.insumosFijosProject
        .where((element) => element.idProyecto == proyectoID)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Insumos con ID'),
      ),
      body: ListView.builder(
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
    );
  }
}
