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

  List<Proyecto> proyectos = [
    Proyecto(
        id:"0",
        name: "Proyecto 1 COSEVISA",
        descripcion: "Descripción del proyecto 1",
        areaCobertura: "Zona 1, desde 5ta Calle a 24 Calle",
        empresa: "COSEVISA",
        fechaInicio: DateTime(2024, 8, 1),
        fechaFin: DateTime(2024, 8, 31),
        jornada: 'diurna',
        vigente: true),
    Proyecto(
        id: "1",
        name: "Proyecto 2 SOLUCERSA",
        descripcion: "Descripción del proyecto 2",
        areaCobertura: "Zona 2, desde 1ra Avenida a 10ma Avenida",
        empresa: "SOLUCERSA",
        fechaInicio: DateTime(2024, 9, 1),
        fechaFin: DateTime(2024, 9, 30),
        jornada: 'diurna',
        vigente: true),
    Proyecto(
        id: "2",
        name: "Proyecto 3 SERVIMANT",
        descripcion: "Descripción del proyecto 3",
        areaCobertura: "Zona 3, desde 15 Avenida a 18 Avenida",
        empresa: "SERVIMANT",
        fechaInicio: DateTime(2024, 10, 1),
        fechaFin: DateTime(2024, 10, 31),
        jornada: 'diurna',
        vigente: true),
    Proyecto(
        id: "3",
        name: "Proyecto 4 MANTENIMIENTOS GT",
        descripcion: "Descripción del proyecto 4",
        areaCobertura: "Zona 4, desde 2da Calle a 8va Calle",
        empresa: "MANTENIMIENTOS GT",
        fechaInicio: DateTime(2024, 11, 1),
        jornada: 'diurna',
        fechaFin: DateTime(2024, 11, 30),
        vigente: true),
    Proyecto(
        id: "4",
        name: "Proyecto 5 PROSERVICIOS",
        descripcion: "Descripción del proyecto 5",
        areaCobertura: "Zona 5, desde 4ta Avenida a 12va Avenida",
        jornada: 'diurna',
        empresa: "PROSERVICIOS",
        fechaInicio: DateTime(2024, 12, 1),
        fechaFin: DateTime(2024, 12, 31),
        vigente: true),
    Proyecto(
        id: "5",
        name: "Proyecto 6 MANTENIMIENTO TOTAL",
        descripcion: "Descripción del proyecto 6",
        areaCobertura: "Zona 6, desde 9na Calle a 14 Calle",
        jornada: 'diurna',
        empresa: "MANTENIMIENTO TOTAL",
        fechaInicio: DateTime(2025, 1, 1),
        fechaFin: DateTime(2025, 1, 31),
        vigente: true),
  ];

//insumos fijos proyecto 0
  static String idProyecto = '0';
  static  String  idProyecto1 = '1';

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

   List<Operario> operarios = [
  Operario(
    id: "1",
    documentoIdentificacion: "9876543210987",
    nombres: "María",
    apellidos: "López",
    nacionalidad: "Guatemalteca", // Suponiendo nacionalidad
    rol: "Encargado de proyecto",
    sexo: "Femenino", // Suponiendo sexo
    fechaNacimiento: DateTime.parse("1990-09-25"),
    fechaInicioLabores: DateTime.parse("2018-05-30"),
    jornada: "Tiempo completo", // Asumiendo jornada completa
    empresa: "CSA",
    idProyectoActual: idProyecto,
    isChecked: false,
  ),
  Operario(
    id: "2",
    documentoIdentificacion: "1234509876543",
    nombres: "Luis",
    apellidos: "García",
    nacionalidad: "Guatemalteca", // Suponiendo nacionalidad
    rol: "Encargado de proyecto",
    sexo: "Masculino", // Suponiendo sexo
    fechaNacimiento: DateTime.parse("1982-07-19"),
    fechaInicioLabores: DateTime.parse("2017-03-15"),
    jornada: "Tiempo completo", // Asumiendo jornada completa
    empresa: "ROVALLEGO",
    idProyectoActual: idProyecto,
    isChecked: false,
  ),
  Operario(
    id: "3",
    documentoIdentificacion: "1111222233334",
    nombres: "Juan",
    apellidos: "Pérez",
    nacionalidad: "Guatemalteca", // Suponiendo nacionalidad
    rol: "Operador de limpieza",
    sexo: "Masculino", // Suponiendo sexo
    fechaNacimiento: DateTime.parse("1985-04-12"),
    fechaInicioLabores: DateTime.parse("2020-01-15"),
    jornada: "Tiempo completo", // Asumiendo jornada completa
    empresa: "COSEVISA",
    idProyectoActual: idProyecto,
    isChecked: false,
  ),
  Operario(
    id: "4",
    documentoIdentificacion: "2222333344445",
    nombres: "Carlos",
    apellidos: "Martínez",
    nacionalidad: "Guatemalteca", // Suponiendo nacionalidad
    rol: "Operador de limpieza",
    sexo: "Masculino", // Suponiendo sexo
    fechaNacimiento: DateTime.parse("1978-11-02"),
    fechaInicioLabores: DateTime.parse("2015-09-01"),
    jornada: "Comodín",
    empresa: "ROVALLEGO",
    idProyectoActual: idProyecto,
    isChecked: false,
  ),
  Operario(
    id: "5",
    documentoIdentificacion: "3333444455556",
    nombres: "Ana",
    apellidos: "Rodríguez",
    nacionalidad: "Guatemalteca", // Suponiendo nacionalidad
    rol: "Operador de limpieza",
    sexo: "Femenino", // Suponiendo sexo
    fechaNacimiento: DateTime.parse("1992-11-11"),
    fechaInicioLabores: DateTime.parse("2021-04-20"),
    jornada: "Tiempo completo",
    empresa: "CSA",
    idProyectoActual: idProyecto,
    isChecked: false,
  ),
  // Agrega el resto de los operarios de la misma manera...
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
