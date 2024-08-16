class InsumoVariable {
  final String nombre;
  final int cantidad;
  final bool checked;
  final String empresaProveedora;
  final DateTime fechaOtorgada;

  InsumoVariable({
    required this.nombre,
    required this.cantidad,
    required this.checked,
    required this.empresaProveedora,
    required this.fechaOtorgada,
  });

  // Método para crear una instancia de la clase a partir de un JSON
  factory InsumoVariable.fromJson(Map<String, dynamic> json) {
    return InsumoVariable(
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
      'Nombre': nombre,
      'Cantidad': cantidad,
      'Checked': checked,
      'Empresa_Proveedora': empresaProveedora,
      'Fecha_Otorgada': fechaOtorgada.toIso8601String(),
    };
  }
}