import 'package:plataforma_limpia_y_verde/singleton.dart';

class InsumoVariable {
  final int idProyecto;
  final String nombre;
  final int cantidad;
  bool checked;
  final String empresaProveedora;
  final DateTime fechaOtorgada;

  InsumoVariable({
    required this.idProyecto,
    required this.nombre,
    required this.cantidad,
    required this.checked,
    required this.empresaProveedora,
    required this.fechaOtorgada,
  });

@override
  String toString() {
    return
      '''   
          
          Proyecto: 
          ${Singleton.instance.proyectos[idProyecto].name}
          Nombre: $nombre
          Cantidad: $cantidad
          Empresa Proveedora: $empresaProveedora
          Fecha Otorgada: $fechaOtorgada
          Estatus: ${checked ? 'Correcto' : 'Incorrecto'}
      ''';
  }

  // Método para crear una instancia de la clase a partir de un JSON
  factory InsumoVariable.fromJson(Map<String, dynamic> json) {
    return InsumoVariable(
      idProyecto: json['Id_Proyecto'],
      nombre: json['Nombre'] as String,
      cantidad: json['Cantidad'] as int,
      checked: json['Checked'] as bool,
      empresaProveedora: json['Empresa_Proveedora'] as String,
      fechaOtorgada: DateTime.parse(json['Fecha_Otorgada'] as String),
    );
  }

  // Método para convertir la instancia de la clase a JSON
  Map<String, dynamic> toJson() {
    return {
      'Id_Proyecto': idProyecto,
      'Nombre': nombre,
      'Cantidad': cantidad,
      'Checked': checked,
      'Empresa_Proveedora': empresaProveedora,
      'Fecha_Otorgada': fechaOtorgada.toIso8601String(),
    };
  }
}