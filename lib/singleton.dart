import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_fijo.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/proyecto.dart';

class Singleton {
  // Instancia única de la clase
  static final Singleton _instance = Singleton._internal();

  // Constructor privado
  Singleton._internal();

  // Método estático para acceder a la instancia
  static Singleton get instance => _instance;

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
    },
    {
      'routeName': '/insumos_id_screen',
      'iconData': Icons.inventory,
      'label': 'Insumos con ID',
      'horizontalMargin': horizontalMarginLittleCards,
      'verticalMargin': verticalMarginLittleCards,
    }
  ];

//*****************************************************************/
  //------------------------------------------------------------------

  List<Proyecto> proyectos = [
    Proyecto(
        id: 0,
        name: "Proyecto 1 COSEVISA",
        descripcion: "Descripción del proyecto 1",
        areaCobertura: "Zona 1, desde 5ta Calle a 24 Calle",
        empresa: "COSEVISA",
        fechaInicio: DateTime(2024, 8, 1),
        fechaFin: DateTime(2024, 8, 31),
        vigente: true),
    Proyecto(
        id: 1,
        name: "Proyecto 2 SOLUCERSA",
        descripcion: "Descripción del proyecto 2",
        areaCobertura: "Zona 2, desde 1ra Avenida a 10ma Avenida",
        empresa: "SOLUCERSA",
        fechaInicio: DateTime(2024, 9, 1),
        fechaFin: DateTime(2024, 9, 30),
        vigente: true),
    Proyecto(
        id: 2,
        name: "Proyecto 3 SERVIMANT",
        descripcion: "Descripción del proyecto 3",
        areaCobertura: "Zona 3, desde 15 Avenida a 18 Avenida",
        empresa: "SERVIMANT",
        fechaInicio: DateTime(2024, 10, 1),
        fechaFin: DateTime(2024, 10, 31),
        vigente: true),
    Proyecto(
        id: 3,
        name: "Proyecto 4 MANTENIMIENTOS GT",
        descripcion: "Descripción del proyecto 4",
        areaCobertura: "Zona 4, desde 2da Calle a 8va Calle",
        empresa: "MANTENIMIENTOS GT",
        fechaInicio: DateTime(2024, 11, 1),
        fechaFin: DateTime(2024, 11, 30),
        vigente: true),
    Proyecto(
        id: 4,
        name: "Proyecto 5 PROSERVICIOS",
        descripcion: "Descripción del proyecto 5",
        areaCobertura: "Zona 5, desde 4ta Avenida a 12va Avenida",
        empresa: "PROSERVICIOS",
        fechaInicio: DateTime(2024, 12, 1),
        fechaFin: DateTime(2024, 12, 31),
        vigente: true),
    Proyecto(
        id: 5,
        name: "Proyecto 6 MANTENIMIENTO TOTAL",
        descripcion: "Descripción del proyecto 6",
        areaCobertura: "Zona 6, desde 9na Calle a 14 Calle",
        empresa: "MANTENIMIENTO TOTAL",
        fechaInicio: DateTime(2025, 1, 1),
        fechaFin: DateTime(2025, 1, 31),
        vigente: true),
  ];

//insumos fijos proyecto 0
  static int idProyecto = 0;
  static int idProyecto1 = 1;

  List<InsumoFijo> insumosFijosProject = [
    InsumoFijo(
      idProyecto: idProyecto,
      nombre: 'Sopladora',
      marcaFabricante: 'Stihl',
      checked: false,
      empresa: 'Empresa A',
      identificacionPlaca: 'SOPL-001',
      fechaOtorgada: DateTime(2023, 3, 15),
    ),
    InsumoFijo(
      idProyecto: idProyecto,
      nombre: 'Camión de Recolección',
      marcaFabricante: 'Mercedes-Benz',
      checked: false,
      empresa: 'Empresa B',
      identificacionPlaca: 'CAM-002',
      fechaOtorgada: DateTime(2023, 4, 10),
    ),
    InsumoFijo(
      idProyecto: idProyecto,
      nombre: 'Motosierra',
      marcaFabricante: 'Husqvarna',
      checked: false,
      empresa: 'Empresa C',
      identificacionPlaca: 'MOT-003',
      fechaOtorgada: DateTime(2023, 2, 20),
    ),
    InsumoFijo(
      idProyecto: idProyecto,
      nombre: 'Cortadora de Césped',
      marcaFabricante: 'John Deere',
      checked: false,
      empresa: 'Empresa D',
      identificacionPlaca: 'CORT-004',
      fechaOtorgada: DateTime(2023, 1, 5),
    ),
    InsumoFijo(
      idProyecto: idProyecto,
      nombre: 'Camión de Volteo',
      marcaFabricante: 'Volvo',
      checked: false,
      empresa: 'Empresa E',
      identificacionPlaca: 'VOL-005',
      fechaOtorgada: DateTime(2023, 5, 8),
    ),
    InsumoFijo(
      idProyecto: idProyecto,
      nombre: 'Retroexcavadora',
      marcaFabricante: 'Caterpillar',
      checked: false,
      empresa: 'Empresa F',
      identificacionPlaca: 'RETRO-006',
      fechaOtorgada: DateTime(2023, 6, 12),
    ),
    InsumoFijo(
      idProyecto: idProyecto,
      nombre: 'Compactadora de Suelo',
      marcaFabricante: 'Bomag',
      checked: false,
      empresa: 'Empresa G',
      identificacionPlaca: 'COMP-007',
      fechaOtorgada: DateTime(2023, 7, 19),
    ),
    InsumoFijo(
      idProyecto: idProyecto,
      nombre: 'Generador Eléctrico',
      marcaFabricante: 'Honda',
      checked: false,
      empresa: 'Empresa H',
      identificacionPlaca: 'GEN-008',
      fechaOtorgada: DateTime(2023, 8, 1),
    ),
    InsumoFijo(
      idProyecto: idProyecto1,
      nombre: 'Sopladora',
      marcaFabricante: 'Stihl',
      checked: false,
      empresa: 'Empresa A',
      identificacionPlaca: 'SOPL-001',
      fechaOtorgada: DateTime(2023, 3, 15),
    ),
    InsumoFijo(
      idProyecto: idProyecto1,
      nombre: 'Camión de Recolección',
      marcaFabricante: 'Mercedes-Benz',
      checked: false,
      empresa: 'Empresa B',
      identificacionPlaca: 'CAM-002',
      fechaOtorgada: DateTime(2023, 4, 10),
    ),
    InsumoFijo(
      idProyecto: idProyecto1,
      nombre: 'Motosierra',
      marcaFabricante: 'Husqvarna',
      checked: false,
      empresa: 'Empresa C',
      identificacionPlaca: 'MOT-003',
      fechaOtorgada: DateTime(2023, 2, 20),
    ),
    InsumoFijo(
      idProyecto: idProyecto1,
      nombre: 'Cortadora de Césped',
      marcaFabricante: 'John Deere',
      checked: false,
      empresa: 'Empresa D',
      identificacionPlaca: 'CORT-004',
      fechaOtorgada: DateTime(2023, 1, 5),
    ),
    InsumoFijo(
      idProyecto: idProyecto1,
      nombre: 'Camión de Volteo',
      marcaFabricante: 'Volvo',
      checked: false,
      empresa: 'Empresa E',
      identificacionPlaca: 'VOL-005',
      fechaOtorgada: DateTime(2023, 5, 8),
    ),
    InsumoFijo(
      idProyecto: idProyecto1,
      nombre: 'Retroexcavadora',
      marcaFabricante: 'Caterpillar',
      checked: false,
      empresa: 'Empresa F',
      identificacionPlaca: 'RETRO-006',
      fechaOtorgada: DateTime(2023, 6, 12),
    ),
    InsumoFijo(
      idProyecto: idProyecto1,
      nombre: 'Compactadora de Suelo',
      marcaFabricante: 'Bomag',
      checked: false,
      empresa: 'Empresa G',
      identificacionPlaca: 'COMP-007',
      fechaOtorgada: DateTime(2023, 7, 19),
    ),
    InsumoFijo(
      idProyecto: idProyecto1,
      nombre: 'Generador Eléctrico',
      marcaFabricante: 'Honda',
      checked: false,
      empresa: 'Empresa H',
      identificacionPlaca: 'GEN-008',
      fechaOtorgada: DateTime(2023, 8, 1),
    ),
  ];

//*****************************************************************/
//                Crear metodos generales
//*****************************************************************/

  void showToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
