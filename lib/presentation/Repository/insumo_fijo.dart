class InsumoFijo {
  final int idProyecto;
  final String nombre;
  final String marcaFabricante;
  bool checked;
  final String empresa;
  final String identificacionPlaca;
  final DateTime fechaOtorgada;

  InsumoFijo({
    required this.idProyecto,
    required this.nombre,
    required this.marcaFabricante,
    required this.checked,
    required this.empresa,
    required this.identificacionPlaca,
    required this.fechaOtorgada,
  });

  // Método para crear una instancia de la clase a partir de un JSON
  factory InsumoFijo.fromJson(Map<String, dynamic> json) {
    return InsumoFijo(
      idProyecto: json['Id_Proyecto'] as int,
      nombre: json['Nombre'] as String,
      marcaFabricante: json['Marca_Fabricante'] as String,
      checked: json['Checked'] as bool,
      empresa: json['Empresa'] as String,
      identificacionPlaca: json['Identificacion_Placa'] as String,
      fechaOtorgada: DateTime.parse(json['Fecha_Otorgada'] as String),
    );
  }

  // Método para convertir la instancia de la clase a JSON
  Map<String, dynamic> toJson() {
    return {
      'Id_Proyecto': idProyecto,
      'Nombre': nombre,
      'Marca_Fabricante': marcaFabricante,
      'Checked': checked,
      'Empresa': empresa,
      'Identificacion_Placa': identificacionPlaca,
      'Fecha_Otorgada': fechaOtorgada.toIso8601String(),
    };
  }
}