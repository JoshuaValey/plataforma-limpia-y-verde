class Proyecto {
  final int id;
  final String name;
  final String descripcion;
  final String areaCobertura;
  final String empresa;
  final DateTime fechaInicio;
  final DateTime fechaFin;
  final bool vigente;

  Proyecto({
    required this.id,
    required this.name,
    required this.descripcion,
    required this.areaCobertura,
    required this.empresa,
    required this.fechaInicio,
    required this.fechaFin,
    required this.vigente
  });
}
