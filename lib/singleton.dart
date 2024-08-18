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
      'iconData': Icons.list,
      'label': 'Reportes',
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

  List<InsumoVariable> insumosVariablesProject = [
    InsumoVariable(
      idProyecto: idProyecto,
      nombre: 'Escoba',
      cantidad: 5,
      checked: false,
      empresaProveedora: 'Empresa A',
      fechaOtorgada: DateTime(2023, 3, 15),
    ),
    InsumoVariable(
      idProyecto: idProyecto,
      nombre: 'Gabacha',
      cantidad: 7,
      checked: false,
      empresaProveedora: 'Empresa B',
      fechaOtorgada: DateTime(2023, 4, 10),
    ),
    InsumoVariable(
      idProyecto: idProyecto,
      nombre: 'Pala',
      cantidad: 4,
      checked: false,
      empresaProveedora: 'Empresa C',
      fechaOtorgada: DateTime(2023, 2, 20),
    ),
    InsumoVariable(
      idProyecto: idProyecto1,
      nombre: 'Escoba',
      cantidad: 3,
      checked: false,
      empresaProveedora: 'Empresa A',
      fechaOtorgada: DateTime(2023, 3, 15),
    ),
    InsumoVariable(
      idProyecto: idProyecto1,
      nombre: 'Gabacha',
      cantidad: 5,
      checked: false,
      empresaProveedora: 'Empresa B',
      fechaOtorgada: DateTime(2023, 4, 10),
    ),
    InsumoVariable(
      idProyecto: idProyecto1,
      nombre: 'Pala',
      cantidad: 2,
      checked: false,
      empresaProveedora: 'Empresa C',
      fechaOtorgada: DateTime(2023, 2, 20),
    ),
  ];


List<Operario> operarios = [
  Operario(
  dpi: "9876543210987",
  nombre: "María López",
  rol: "Encargado de proyecto",
  telefono: "+50287654321",
  contactoEmergencia: "+50211223344",
  empresa: "CSA",
  fechaNacimiento: DateTime.parse("1990-09-25"),
  direccion: "Avenida Real 456, Zona 10, Ciudad de Guatemala",
  fechaInicioLabores: DateTime.parse("2018-05-30"),
  tipoLicencia: "Tipo B",
  numeroLicencia: "9876543210987",
  estadoLaboral: "Permanente",
  idProyectoActual: idProyecto,
  isChecked: false,
),
Operario(
  dpi: "1234509876543",
  nombre: "Luis García",
  rol: "Encargado de proyecto",
  telefono: "+50298765432",
  contactoEmergencia: "+50222334455",
  empresa: "ROVALLEGO",
  fechaNacimiento: DateTime.parse("1982-07-19"),
  direccion: "Residencial La Aurora 789, Zona 13, Ciudad de Guatemala",
  fechaInicioLabores: DateTime.parse("2017-03-15"),
  tipoLicencia: "Tipo A",
  numeroLicencia: "1234509876543",
  estadoLaboral: "Permanente",
  idProyectoActual: idProyecto,
  isChecked: false,
),
Operario(
  dpi: "1111222233334",
  nombre: "Juan Pérez",
  rol: "Operador de limpieza",
  telefono: "+50212345678",
  contactoEmergencia: "+50287654321",
  empresa: "COSEVISA",
  fechaNacimiento: DateTime.parse("1985-04-12"),
  direccion: "Calle Falsa 123, Zona 1, Ciudad de Guatemala",
  fechaInicioLabores: DateTime.parse("2020-01-15"),
  tipoLicencia: "-",
  numeroLicencia: "-",
  estadoLaboral: "Tiempo completo",
  idProyectoActual: idProyecto,
  isChecked: false,
),
Operario(
  dpi: "2222333344445",
  nombre: "Carlos Martínez",
  rol: "Operador de limpieza",
  telefono: "+50211223344",
  contactoEmergencia: "+50233445566",
  empresa: "ROVALLEGO",
  fechaNacimiento: DateTime.parse("1978-11-02"),
  direccion: "Boulevard Principal 789, Zona 4, Ciudad de Guatemala",
  fechaInicioLabores: DateTime.parse("2015-09-01"),
  tipoLicencia: "-",
  numeroLicencia: "-",
  estadoLaboral: "Comodín",
  idProyectoActual: idProyecto,
  isChecked: false,
),
Operario(
  dpi: "3333444455556",
  nombre: "Ana Rodríguez",
  rol: "Operador de limpieza",
  telefono: "+50222334455",
  contactoEmergencia: "+50244556677",
  empresa: "CSA",
  fechaNacimiento: DateTime.parse("1992-11-11"),
  direccion: "Colonia Vista Hermosa 345, Zona 15, Ciudad de Guatemala",
  fechaInicioLabores: DateTime.parse("2021-04-20"),
  tipoLicencia: "-",
  numeroLicencia: "-",
  estadoLaboral: "Tiempo completo",
  idProyectoActual: idProyecto,
  isChecked: false,
),
Operario(
  dpi: "4444555566667",
  nombre: "David Gómez",
  rol: "Operador de limpieza",
  telefono: "+50233445566",
  contactoEmergencia: "+50255667788",
  empresa: "COSEVISA",
  fechaNacimiento: DateTime.parse("1987-03-05"),
  direccion: "Avenida Las Américas 678, Zona 14, Ciudad de Guatemala",
  fechaInicioLabores: DateTime.parse("2019-02-10"),
  tipoLicencia: "-",
  numeroLicencia: "-",
  estadoLaboral: "Tiempo completo",
  idProyectoActual: idProyecto,
  isChecked: false,
),
Operario(
  dpi: "5555666677778",
  nombre: "Laura Mejía",
  rol: "Operador de limpieza",
  telefono: "+50244556677",
  contactoEmergencia: "+50266778899",
  empresa: "CSA",
  fechaNacimiento: DateTime.parse("1994-08-21"),
  direccion: "Colonia Los Cipreses 901, Zona 6, Ciudad de Guatemala",
  fechaInicioLabores: DateTime.parse("2022-07-12"),
  tipoLicencia: "-",
  numeroLicencia: "-",
  estadoLaboral: "Tiempo completo",
  idProyectoActual: idProyecto,
  isChecked: false,
),
Operario(
  dpi: "6666777788889",
  nombre: "Miguel Sánchez",
  rol: "Operador de limpieza",
  telefono: "+50255667788",
  contactoEmergencia: "+50277889900",
  empresa: "ROVALLEGO",
  fechaNacimiento: DateTime.parse("1983-12-09"),
  direccion: "Colonia Miraflores 234, Zona 11, Ciudad de Guatemala",
  fechaInicioLabores: DateTime.parse("2016-08-18"),
  tipoLicencia: "-",
  numeroLicencia: "-",
  estadoLaboral: "Comodín",
  idProyectoActual: idProyecto,
  isChecked: false,
),
Operario(
  dpi: "7777888899990",
  nombre: "Paola Ortiz",
  rol: "Operador de limpieza",
  telefono: "+50266778899",
  contactoEmergencia: "+50288990011",
  empresa: "COSEVISA",
  fechaNacimiento: DateTime.parse("1989-06-14"),
  direccion: "Calle Martí 123, Zona 2, Ciudad de Guatemala",
  fechaInicioLabores: DateTime.parse("2018-12-03"),
  tipoLicencia: "-",
  numeroLicencia: "-",
  estadoLaboral: "Tiempo completo",
  idProyectoActual: idProyecto,
  isChecked: false,
),
Operario(
  dpi: "8888999900001",
  nombre: "Ricardo Flores",
  rol: "Operador de limpieza",
  telefono: "+50277889900",
  contactoEmergencia: "+50299001122",
  empresa: "CSA",
  fechaNacimiento: DateTime.parse("1991-10-17"),
  direccion: "Colonia Santa Marta 567, Zona 7, Ciudad de Guatemala",
  fechaInicioLabores: DateTime.parse("2021-11-22"),
  tipoLicencia: "-",
  numeroLicencia: "-",
  estadoLaboral: "Tiempo completo",
  idProyectoActual: idProyecto,
  isChecked: false,
),
Operario(
  dpi: "9999000011112",
  nombre: "Gabriela Morales",
  rol: "Operador de limpieza",
  telefono: "+50288990011",
  contactoEmergencia: "+50200112233",
  empresa: "ROVALLEGO",
  fechaNacimiento: DateTime.parse("1986-02-28"),
  direccion: "Colonia El Roble 890, Zona 9, Ciudad de Guatemala",
  fechaInicioLabores: DateTime.parse("2017-05-06"),
  tipoLicencia: "-",
  numeroLicencia: "-",
  estadoLaboral: "Tiempo completo",
  idProyectoActual: idProyecto,
  isChecked: false,
),
Operario(
  dpi: "0000111122223",
  nombre: "Francisco Ruiz",
  rol: "Operador de limpieza",
  telefono: "+50299001122",
  contactoEmergencia: "+50211223344",
  empresa: "COSEVISA",
  fechaNacimiento: DateTime.parse("1988-01-01"),
  direccion: "Calle Montúfar 321, Zona 12, Ciudad de Guatemala",
  fechaInicioLabores: DateTime.parse("2022-09-27"),
  tipoLicencia: "-",
  numeroLicencia: "-",
  estadoLaboral: "Tiempo completo",
  idProyectoActual: idProyecto,
  isChecked: false,
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
