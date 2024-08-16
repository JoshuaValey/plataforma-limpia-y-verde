class Proyecto {
  final int id;
  final String name;
  final String descripcion;
  final String areaCobertura;
  final String empresa;
  final DateTime fechaInicio;
  final DateTime fechaFin;
  final bool vigente;

  Proyecto(
      {required this.id,
      required this.name,
      required this.descripcion,
      required this.areaCobertura,
      required this.empresa,
      required this.fechaInicio,
      required this.fechaFin,
      required this.vigente});

  // Método para crear una instancia de Proyecto a partir de un JSON
  factory Proyecto.fromJson(Map<String, dynamic> json) {
    return Proyecto(
      id: json['id'] as int,
      name: json['name'] as String,
      descripcion: json['descripcion'] as String,
      areaCobertura: json['areaCobertura'] as String,
      empresa: json['empresa'] as String,
      fechaInicio: DateTime.parse(json['fechaInicio'] as String),
      fechaFin: DateTime.parse(json['fechaFin'] as String),
      vigente: json['vigente'] as bool,
    );
  }

  // Método para convertir una instancia de Proyecto a JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'descripcion': descripcion,
      'areaCobertura': areaCobertura,
      'empresa': empresa,
      'fechaInicio': fechaInicio.toIso8601String(),
      'fechaFin': fechaFin.toIso8601String(),
      'vigente': vigente,
    };
  }
}