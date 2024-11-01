import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_fijo.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_variable.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/operario.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/proyecto.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/reporte.dart';
import 'package:plataforma_limpia_y_verde/singleton.dart';

class AppiService {
  final String url;
  final _dio = Dio();

  AppiService({required this.url});

  Future<List<Proyecto>> postProyectos(String id) async {
    final url = '${this.url}/proyecto/listadolimitado';
    try {
      final response = await _dio.post(url,
          data: jsonEncode({"Id": id}),
          options: Options(headers: {
            "Content-Type": "application/json",
          }));



      if (response.statusCode == 200) {
        List<dynamic> body = response.data;
        List<Proyecto> proyectos =
            body.map((dynamic item) => Proyecto.fromJson(item)).toList();
        return proyectos;
      } else {
        throw Exception('Error al cargar los proyectos');
      }
    } catch (e) {
      throw Exception('Error al cargar los proyectos: $e');
    }
  }



//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    // Método postOperarios usando Dio
  Future<List<Operario>> postOperarios(String id) async {
    final url = '${this.url}/operario/listado';
    try {
      final response = await _dio.post(url,
          data: jsonEncode({"Id": id}),
          options: Options(headers: {
            "Content-Type": "application/json",
          }));
      if (response.statusCode == 200) {
        List<dynamic> body = response.data;
        List<Operario> operarios =
            body.map((dynamic item) => Operario.fromJson(item)).toList();
        return operarios;
      } else {
        throw Exception('Error al cargar los operarios');
      }
    } catch (e) {
      throw Exception('Error al cargar los operarios: $e');
    }
  }


Future<List<InsumoVariable>> postInsumosVariables(String id) async{
 final url = '${this.url}/insumovariable/listado';
try {
  final response = await _dio.post(url,
          data: jsonEncode({"Id": id}),
          options: Options(headers: {
            "Content-Type": "application/json",
          }));
      if (response.statusCode == 200) {
        List<dynamic> body = response.data;
        List<InsumoVariable> insumosVariables =
            body.map((dynamic item) => InsumoVariable.fromJson(item)).toList();
            // Filtrar los insumos variables por IdProyecto.
            final filterInsumoVariables = insumosVariables.where((element) => element.idProyecto == id).toList();
        return filterInsumoVariables;
      } else {
        throw Exception('Error al cargar los insumos variables');
      }
  
} catch (e) {
 throw Exception('Error al cargar los insumos variables: $e'); 
}
} 

Future<List<InsumoFijo>> postInsumosFijos(String id) async{
 final url = '${this.url}/insumofijo/listado';
try {
  final response = await _dio.post(url,
          data: jsonEncode({"Id": id}),
          options: Options(headers: {
            "Content-Type": "application/json",
          }));
      if (response.statusCode == 200) {
        List<dynamic> body = response.data;
        List<InsumoFijo> insumosFijos =
            body.map((dynamic item) => InsumoFijo.fromJson(item)).toList();
            // Filtrar los insumos fijos por IdProyecto.
            final filterInsumoFijos = insumosFijos.where((element) => element.idProyecto == id).toList();
        return filterInsumoFijos;
      } else {
        throw Exception('Error al cargar los insumos fijos');
      }
      
}
 catch (e) {
  throw Exception('Error al cargar los insumos fijos: $e');
       }

}



Future<void> postReporte(Reporte reporte) async {
  final url = '${this.url}/reporte/insertar';
  try {
    final response = await _dio.post(url,
        data: jsonEncode({
          "inspectorId": reporte.inspectorId,
          "fecha_reporte": reporte.fechaReporte.toIso8601String(),
          "proyectoId": reporte.proyectoId,
          "empresa": reporte.empresa,
          "url_img": reporte.urlImg,
          "ubicacion": reporte.ubicacion,
          "operarios": reporte.operarios?.map((i) => i.toJson()).toList(),
          "insumos_fijos": reporte.insumosFijos?.map((i) => i.toJson()).toList(),
          "insumos_variables": reporte.insumosVariables?.map((i) => i.toJson()).toList(),
        }),
        options: Options(headers: {
          "Content-Type": "application/json",
        }));
    if (response.statusCode == 200) {
      Singleton.instance.showToast('Reporte enviado');
      return;
    } else {

      Singleton.instance.showToast('Reporte Error');
    }
  } catch (e) {
    throw Exception('Error al crear el reporte: $e');
  }
}




}

