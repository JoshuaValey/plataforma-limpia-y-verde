import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_fijo.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_variable.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/operario.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/proyecto.dart';

class AppiService {
  final String url;

  AppiService({required this.url});

  //Método que devuelva un listado de proyectos.
  Future<List<Proyecto>> getProyectos() async {
    final response = await http.get(Uri.parse('$url/proyectos'));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Proyecto> operarios =
          body.map((dynamic item) => Proyecto.fromJson(item)).toList();
      return operarios;
    } else {
      throw 'No se pueden cargar los proyectos';
    }
  }
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
        body.map((dynamic item)=> InsumoVariable.fromJson(item)).toList();
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
        body.map((dynamic item)=> InsumoFijo.fromJson(item)).toList();
     return insumosId; 
    } else {
     throw 'No se pueden cargar los insumos ID'; 
    }
  }
}
