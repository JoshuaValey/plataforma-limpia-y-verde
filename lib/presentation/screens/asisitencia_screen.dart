import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/presentation/widgets/green_button.dart';

class AsistenciaScreen extends StatefulWidget {
  const AsistenciaScreen({super.key});

  @override
  State<AsistenciaScreen> createState() => _AsistenciaScreenState();
}

class _AsistenciaScreenState extends State<AsistenciaScreen> {
  final List<bool> _isChecked = List<bool>.filled(10, false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GreenButton(label: 'Grabar', onPressed: () {}), 
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text('Asistencia'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Nombre Usuario'),
              trailing: Checkbox(
                value:  _isChecked[index],
                onChanged: (value) {
                  setState(() {
                    _isChecked[index] = value!;
                  });
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
