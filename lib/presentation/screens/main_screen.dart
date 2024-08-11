
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const double horizontalMarginLittleCards = 10.0;
    const double verticalMarginLittleCards = 10.0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           CardMainMenu(routeName: '/proyectos_screen', iconData: Icons.notifications_none, label: 'Notificaciones', horizontalMargin: 20.0, verticalMargin: 20.0), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //card view con una imagen que venga de assets y un texto debajo

           CardMainMenu(routeName: '/proyectos_screen', iconData: Icons.inventory_sharp, label: 'Proyectos', horizontalMargin: horizontalMarginLittleCards, verticalMargin: verticalMarginLittleCards), 
           CardMainMenu(routeName: '/proyectos_screen', iconData: Icons.person, label: 'Supervisores', horizontalMargin: horizontalMarginLittleCards, verticalMargin: verticalMarginLittleCards), 
              //card view con una imagen que venga de assets y un texto debajo
            
            ],
          ),
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
            CardMainMenu(routeName: '/proyectos_screen', iconData: Icons.directions_walk, label: 'Inspectores', horizontalMargin: horizontalMarginLittleCards, verticalMargin: verticalMarginLittleCards), 

            CardMainMenu(routeName: '/proyectos_screen', iconData: Icons.cleaning_services, label: 'Insumos', horizontalMargin: horizontalMarginLittleCards, verticalMargin: verticalMarginLittleCards,), 
            ],
          ), 

          //container vacio solo con height y width
          SizedBox(height: 200),
        ],

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

  const CardMainMenu({
    super.key,
    required this.routeName,
    required this.iconData,
    required this.label,
    required this.horizontalMargin,
    required this.verticalMargin
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: horizontalMargin, vertical: verticalMargin),
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
                    Icon(iconData, size: 80, color: Colors.black), // Ícono proporcionado
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
      ),
    );
   
  }
}