import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_fijo.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_variable.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/operario.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/proyecto.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/reporte.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/reporte_inspector.dart';

class Singleton {
  // Instancia única de la clase
  static final Singleton _instance = Singleton._internal();

  // Constructor privado
  Singleton._internal();

  // Método estático para acceder a la instancia
  static Singleton get instance => _instance;

  //------------------------------------------------------------------
  static String idUsuario = "";
  static String idProyectoTest = "66dcb79d0f09e001c4ad6a6c";
  static String linkApiService =
      "https://serviciolimpiaverde-bjb2c2g2a3gggggv.canadacentral-01.azurewebsites.net";

  static List<OperarioReporte> reporteOperario = [];
  static void setReporteOperario(List<Operario>? operarios) {
    reporteOperario =
        operarios!.map((e) => OperarioReporte.fromOperario(e)).toList();
  }

  static List<InsumoFijoReporte> reporteInsumoFijo = [];
  static void setReporteInsumoFijo(List<InsumoFijo>? insumos) {
    reporteInsumoFijo =
        insumos!.map((e) => InsumoFijoReporte.fromInsumoFijo(e)).toList();
  }

  static List<InsumoVariableReporte> reporteInsumoVariable = [];
  static void setReporteInsumoVariable(List<InsumoVariable>? insumos) {
    reporteInsumoVariable = insumos!
        .map((e) => InsumoVariableReporte.fromInsumoVariable(e))
        .toList();
  }

static void disposeReporte() {
    reporteOperario = [];
    reporteInsumoFijo = [];
    reporteInsumoVariable = [];
  }
  

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
    /*{
      'routeName': '/reporte_screen',
      'iconData': Icons.list,
      'label': 'Reportes',
      'horizontalMargin': horizontalMarginLittleCards,
      'verticalMargin': verticalMarginLittleCards,
    },*/
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

void showToastWarning(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
