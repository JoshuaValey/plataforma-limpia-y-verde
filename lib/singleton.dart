import 'package:flutter/material.dart';

class Singleton {
  // Instancia única de la clase
  static final Singleton _instance = Singleton._internal();

  // Constructor privado
  Singleton._internal();

  // Método estático para acceder a la instancia
  static Singleton get instance => _instance;

  // Métodos y propiedades de la clase
  //------------------------------------------------------------------
  //Crear menu de pagina "Inicio""
  static double horizontalMarginLittleCards = 10.0;
  static double verticalMarginLittleCards = 10.0;
  List<Map<String, dynamic>> menuItems = [
    {
      'routeName': '/proyectos_screen',
      'iconData': Icons.inventory_sharp,
      'label': 'Proyectos',
      'horizontalMargin': horizontalMarginLittleCards,
      'verticalMargin': verticalMarginLittleCards,
    },
    {
      'routeName': '/proyectos_screen',
      'iconData': Icons.person,
      'label': 'Inspectores',
      'horizontalMargin': horizontalMarginLittleCards,
      'verticalMargin': verticalMarginLittleCards,
    },
    {
      'routeName': '/proyectos_screen',
      'iconData': Icons.directions_walk,
      'label': 'Supervisores',
      'horizontalMargin': horizontalMarginLittleCards,
      'verticalMargin': verticalMarginLittleCards,
    },
    {
      'routeName': '/proyectos_screen',
      'iconData': Icons.cleaning_services,
      'label': 'Insumos',
      'horizontalMargin': horizontalMarginLittleCards,
      'verticalMargin': verticalMarginLittleCards,
    }
  ];

//*****************************************************************/

//Crear list map con menu de asignaciones
 List<Map<String, dynamic>> asignacionesItems = [
    {
      'routeName': '/asistencia_screen',
      'iconData': Icons.check_circle,
      'label': 'Asistencia',
      'horizontalMargin': horizontalMarginLittleCards,
      'verticalMargin': verticalMarginLittleCards,
    },
    {
      'routeName': '/asistencia_screen',
      'iconData': Icons.inventory,
      'label': 'Insumos',
      'horizontalMargin': horizontalMarginLittleCards,
      'verticalMargin': verticalMarginLittleCards,
    }
      ];


//*****************************************************************/
  List<Map<String, dynamic>> proyectos = [
    {
      'id': '0',
      'nombre': 'Proyecto 1',
      'descripcion': 'Descripcion del proyecto 1',
      'fechaInicio': '01/01/2021',
      'fechaFin': '01/01/2022',
      'empresa': 'Cosevisa',
      'area-cobertura': 'Calle 1',
    },
    {
      'id': '1',
      'nombre': 'Proyecto 2',
      'descripcion': 'Descripcion del proyecto 1',
      'fechaInicio': '01/01/2021',
      'fechaFin': '01/01/2022',
      'empresa': 'Cosevisa 2',
      'area-cobertura': 'Calle 1',
    },
    {
      'id': '2',
      'nombre': 'Proyecto 3',
      'descripcion': 'Descripcion del proyecto 1',
      'fechaInicio': '01/01/2021',
      'fechaFin': '01/01/2022',
      'empresa': 'Cosevisa 2',
      'area-cobertura': 'Calle 1',
    },
    {
      'id': '3',
      'nombre': 'Proyecto 4',
      'descripcion': 'Descripcion del proyecto 1',
      'fechaInicio': '01/01/2021',
      'fechaFin': '01/01/2022',
      'empresa': 'Cosevisa 2',
      'area-cobertura': 'Calle 1',
    }
  ];
  //------------------------------------------------------------------
}
