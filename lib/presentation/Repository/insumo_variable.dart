import 'package:plataforma_limpia_y_verde/singleton.dart';

class InsumoVariable {
  final String id;
  final int idProyecto;
  final String nombre;
  final int cantidad;
  bool? checked;

  InsumoVariable({
    required this.id,
    required this.idProyecto,
    required this.nombre,
    required this.cantidad,
    this.checked = false,
  });

@override
  String toString() {
    return
      '''   
          
          Proyecto: 
          ${Singleton.instance.proyectos[idProyecto].name}
          Nombre: $nombre
          Cantidad: $cantidad
      ''';
  }

  // Método para crear una instancia de la clase a partir de un JSON
  factory InsumoVariable.fromJson(Map<String, dynamic> json) {
    return InsumoVariable(
      id: json['Id'] as String,
      idProyecto: json['Id_Proyecto'],
      nombre: json['Nombre'] as String,
      cantidad: json['Cantidad'] as int,
      checked: json['Checked'] as bool,

    );
  }

  // Método para convertir la instancia de la clase a JSON
  Map<String, dynamic> toJson() {
    return {
      'Id': id,
      'Id_Proyecto': idProyecto,
      'Nombre': nombre,
      'Cantidad': cantidad,
    };
  }
}