import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/proyecto.dart';

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
      'iconData': Icons.notification_important_outlined,
      'label': 'Proyectos',
      'horizontalMargin': horizontalMarginLittleCards,
      'verticalMargin': verticalMarginLittleCards,
    }
   /* ,
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
    }*/
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
  //------------------------------------------------------------------

List<Proyecto> proyectos = [
  Proyecto(id: 0, name: "Proyecto 1", descripcion: "Descripción del proyecto 1", areaCobertura: "Zona 1, desde 5ta Calle a 24 Calle", empresa: "COSEVISA", fechaInicio: DateTime(2024,8,1), fechaFin: DateTime(2024,8,31), vigente: true),
  Proyecto(id: 1, name: "Proyecto 2", descripcion: "Descripción del proyecto 2", areaCobertura: "Zona 2, desde 1ra Avenida a 10ma Avenida", empresa: "SOLUCERSA", fechaInicio: DateTime(2024,9,1), fechaFin: DateTime(2024,9,30), vigente: true),

Proyecto(id: 2, name: "Proyecto 3", descripcion: "Descripción del proyecto 3", areaCobertura: "Zona 3, desde 15 Avenida a 18 Avenida", empresa: "SERVIMANT", fechaInicio: DateTime(2024,10,1), fechaFin: DateTime(2024,10,31), vigente: true),

Proyecto(id: 3, name: "Proyecto 4", descripcion: "Descripción del proyecto 4", areaCobertura: "Zona 4, desde 2da Calle a 8va Calle", empresa: "MANTENIMIENTOS GT", fechaInicio: DateTime(2024,11,1), fechaFin: DateTime(2024,11,30), vigente: true),

Proyecto(id: 4, name: "Proyecto 5", descripcion: "Descripción del proyecto 5", areaCobertura: "Zona 5, desde 4ta Avenida a 12va Avenida", empresa: "PROSERVICIOS", fechaInicio: DateTime(2024,12,1), fechaFin: DateTime(2024,12,31), vigente: true),

Proyecto(id: 5, name: "Proyecto 6", descripcion: "Descripción del proyecto 6", areaCobertura: "Zona 6, desde 9na Calle a 14 Calle", empresa: "MANTENIMIENTO TOTAL", fechaInicio: DateTime(2025,1,1), fechaFin: DateTime(2025,1,31), vigente: true),
];






}
