import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text('Asistencia'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/user.png'),
              ),
              title: const Text('Nombre Usuario'),
              trailing: Checkbox(
                value: _isChecked[index],
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
