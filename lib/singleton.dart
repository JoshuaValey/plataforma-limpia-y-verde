import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_fijo.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_variable.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/operario.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/proyecto.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/reporte_inspector.dart';

class Singleton {
  // Instancia única de la clase
  static final Singleton _instance = Singleton._internal();

  // Constructor privado
  Singleton._internal();

  // Método estático para acceder a la instancia
  static Singleton get instance => _instance;
  

  //------------------------------------------------------------------
  static String idUsuario =  "66d4a66ceb6372d30dedfeea";
  static String linkApiService = "https://profound-vigorously-cobra.ngrok-free.app";
  List<Proyecto>? proyectos; 

   static List<Proyecto> getProyectos() {
    // Si 'proyectos' es nulo, devolver una lista vacía
    return instance.proyectos ?? [];
  }

  List<Operario>? operarios;
 static List<Operario> getOperarios() {
    // Si 'proyectos' es nulo, devolver una lista vacía
    return instance.operarios ?? [];
  }
  //Crear menu de pagina "Inicio""
  static double horizontalMarginLittleCards = 10.0;
  static double verticalMarginLittleCards = 10.0;
  List<Map<String, dynamic>> menuItems = [
    {
      'routeName': '/reporte_screen',
      'iconData': Icons.list,
      'label': 'Reportes',
      'horizontalMargin': horizontalMarginLittleCards,
      'verticalMargin': verticalMarginLittleCards,
    },
    {
      'routeName': '/proyectos_screen',
      'iconData': Icons.inventory_sharp,
      'label': 'Proyectos',
      'horizontalMargin': horizontalMarginLittleCards,
      'verticalMargin': verticalMarginLittleCards,
    },

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
      'routeName': '/insumos_variables_screen',
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



//insumos fijos proyecto 0
  static String idProyecto = '0';
  static String  idProyecto1 = '1';

 // Lista de insumos fijos convertida al nuevo modelo de datos
List<InsumoFijo> insumosFijosProject = [
  InsumoFijo(
    id: "1", 
    idProyecto: idProyecto,
    codigo: 'SOPL-001',
    nombre: 'Sopladora',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa A',
    estado: true,
  ),
  InsumoFijo(
    id: "2",
    idProyecto: idProyecto,
    codigo: 'CAM-002',
    nombre: 'Camión de Recolección',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa B',
    estado: true,
  ),
  InsumoFijo(
    id: "3",
    idProyecto: idProyecto,
    codigo: 'MOT-003',
    nombre: 'Motosierra',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa C',
    estado: true,
  ),
  InsumoFijo(
    id: "4",
    idProyecto: idProyecto,
    codigo: 'CORT-004',
    nombre: 'Cortadora de Césped',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa D',
    estado: true,
  ),
  InsumoFijo(
    id: "5",
    idProyecto: idProyecto,
    codigo: 'VOL-005',
    nombre: 'Camión de Volteo',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa E',
    estado: true,
  ),
  InsumoFijo(
    id: "6",
    idProyecto: idProyecto,
    codigo: 'RETRO-006',
    nombre: 'Retroexcavadora',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa F',
    estado: true,
  ),
  InsumoFijo(
    id: "7",
    idProyecto: idProyecto,
    codigo: 'COMP-007',
    nombre: 'Compactadora de Suelo',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa G',
    estado: true,
  ),
  InsumoFijo(
    id: "8",
    idProyecto: idProyecto,
    codigo: 'GEN-008',
    nombre: 'Generador Eléctrico',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa H',
    estado: true,
  ),
  InsumoFijo(
    id: "9",
    idProyecto: idProyecto1,
    codigo: 'SOPL-001',
    nombre: 'Sopladora',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa A',
    estado: true,
  ),
  InsumoFijo(
    id: "10",
    idProyecto: idProyecto1,
    codigo: 'CAM-002',
    nombre: 'Camión de Recolección',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa B',
    estado: true,
  ),
  InsumoFijo(
    id: "11",
    idProyecto: idProyecto1,
    codigo: 'MOT-003',
    nombre: 'Motosierra',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa C',
    estado: true,
  ),
  InsumoFijo(
    id: "12",
    idProyecto: idProyecto1,
    codigo: 'CORT-004',
    nombre: 'Cortadora de Césped',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa D',
    estado: true,
  ),
  InsumoFijo(
    id: "13",
    idProyecto: idProyecto1,
    codigo: 'VOL-005',
    nombre: 'Camión de Volteo',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa E',
    estado: true,
  ),
  InsumoFijo(
    id: "14",
    idProyecto: idProyecto1,
    codigo: 'RETRO-006',
    nombre: 'Retroexcavadora',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa F',
    estado: true,
  ),
  InsumoFijo(
    id: "15",
    idProyecto: idProyecto1,
    codigo: 'COMP-007',
    nombre: 'Compactadora de Suelo',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa G',
    estado: true,
  ),
  InsumoFijo(
    id: "16",
    idProyecto: idProyecto1,
    codigo: 'GEN-008',
    nombre: 'Generador Eléctrico',
    modelo: '2024',
    capacidad: '20',
    empresa: 'Empresa H',
    estado: true,
  ),
];

  // Lista de insumos variables convertida al nuevo modelo de datos
List<InsumoVariable> insumosVariablesProject = [
  InsumoVariable(
    id: "1", // ID único para cada insumo
    idProyecto: idProyecto,
    nombre: 'Escoba',
    cantidad: 5,
  ),
  InsumoVariable(
    id: "2",
    idProyecto: idProyecto,
    nombre: 'Gabacha',
    cantidad: 7,
  ),
  InsumoVariable(
    id: "3",
    idProyecto: idProyecto,
    nombre: 'Pala',
    cantidad: 4,
  ),
  InsumoVariable(
    id: "4",
    idProyecto: idProyecto1,
    nombre: 'Escoba',
    cantidad: 3,
  ),
  InsumoVariable(
    id: "5",
    idProyecto: idProyecto1,
    nombre: 'Gabacha',
    cantidad: 5,
  ),
  InsumoVariable(
    id: "6",
    idProyecto: idProyecto1,
    nombre: 'Pala',
    cantidad: 2,
  ),
];

   
//*****************************************************************/
//                Reporte de Inspección
  List<InsumoFijo>? insumoFijoReporte;
  List<InsumoVariable>? insumoVariableReporte;
  List<Operario>? operarioReporte;
  List<ReporteInspector> reportes = [];

//*****************************************************************/
//                Crear metodos generales
//*****************************************************************/

  void showToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
