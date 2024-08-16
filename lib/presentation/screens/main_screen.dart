import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';
import 'package:plataforma_limpia_y_verde/presentation/widgets/card_main_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Center(
        child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: Singleton.instance.menuItems.map((element) {
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
