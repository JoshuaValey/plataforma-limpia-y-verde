import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';
import 'package:plataforma_limpia_y_verde/presentation/widgets/card_main_menu.dart';

class AsignacionesScreen extends StatelessWidget {
  const AsignacionesScreen({super.key});
  @override
  Widget build(BuildContext context) {
     //argumentos de la ruta
    final proyectoID = ModalRoute.of(context)!.settings.arguments as int;
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

