import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_fijo.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_variable.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/operario.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/proyecto.dart';

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
}

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
  //Metodo que devuelva un listado de personas.
  Future<List<Operario>> getOperarios() async {
    final response = await http.get(Uri.parse('$url/operarios'));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Operario> operarios =
          body.map((dynamic item) => Operario.fromJson(item)).toList();
      return operarios;
    } else {
      throw 'No se pueden cargar los operarios';
    }
  }

  //Metodo que devuelva un listado de insumos sin ID.
  Future<List<InsumoVariable>> getInsumos() async {
    final response = await http.get(Uri.parse('$url/insumos'));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<InsumoVariable> insumosId =
          body.map((dynamic item) => InsumoVariable.fromJson(item)).toList();
      return insumosId;
    } else {
      throw 'No se pueden cargar los insumos';
    }
  }

  //Metodo que devuelva un listado de insumos con ID.
  Future<List<InsumoFijo>> getInsumosId() async {
    final response = await http.get(Uri.parse('$url/insumosid'));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<InsumoFijo> insumosId =
          body.map((dynamic item) => InsumoFijo.fromJson(item)).toList();
      return insumosId;
    } else {
      throw 'No se pueden cargar los insumos ID';
    }
  }
}
*/