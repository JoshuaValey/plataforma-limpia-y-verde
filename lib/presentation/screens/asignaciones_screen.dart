import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';

class AsignacionesScreen extends StatelessWidget {
  const AsignacionesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/main_screen');
        },
        backgroundColor: Colors.green,
        shape: const CircleBorder(),
        child: const Icon(Icons.home, color: Colors.white),
      ),
      appBar: AppBar(
        title: const Text('Asignaciones'),
      ),
      body: Center(
        child: GridView.count(
            crossAxisCount: 1,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: Singleton.instance.asignacionesItems.map((element) {
              return CardMainMenu(
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

class CardMainMenu extends StatelessWidget {
  final String routeName; // Ruta a la que navegar
  final IconData iconData; // Ícono a mostrar
  final String label; // Texto a mostrar
  final double horizontalMargin; // Margen horizontal
  final double verticalMargin; // Margen vertical

  const CardMainMenu(
      {super.key,
      required this.routeName,
      required this.iconData,
      required this.label,
      required this.horizontalMargin,
      required this.verticalMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: horizontalMargin, vertical: verticalMargin),
      child: InkWell(
        onTap: () {
          // Navegar a la pantalla indicada
          Navigator.pushNamed(context, routeName);
        },
        child: Card(
          elevation: 10.0,
          margin: const EdgeInsets.all(0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(iconData,
                    size: 80, color: Colors.black), // Ícono proporcionado
                const SizedBox(height: 10), // Espacio entre el ícono y el texto
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ), // Texto proporcionado
              ],
            ),
          ),
        ),
      ),
    );
  }
}
