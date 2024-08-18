import 'package:plataforma_limpia_y_verde/singleton.dart';

class Operario{
  final String dpi;
  final String nombre;
  final String rol;
  final String telefono;
  final String contactoEmergencia;
  final String empresa;
  final DateTime fechaNacimiento;
  final String direccion;
  final DateTime fechaInicioLabores;
  final String tipoLicencia;
  final String numeroLicencia;
  final String estadoLaboral;
int idProyectoActual;
bool isChecked;

@override
String toString() => 
  '''   
      Proyecto Actual:
      ${Singleton.instance.proyectos[idProyectoActual].name}   
      DPI: $dpi
      Nombre: $nombre
      Rol: $rol
      Empresa: $empresa
      Estado Laboral: $estadoLaboral
      Status:  ${isChecked ? 'Asistencia' : 'Inasistencia'} '
      
      ''';

  Operario({
    required this.dpi,
    required this.nombre,
    required this.rol,
    required this.telefono,
    required this.contactoEmergencia,
    required this.empresa,
    required this.fechaNacimiento,
    required this.direccion,
    required this.fechaInicioLabores,
    required this.tipoLicencia,
    required this.numeroLicencia,
    required this.estadoLaboral,
    required this.idProyectoActual,
    required this.isChecked
  });

  factory Operario.fromJson(Map<String, dynamic> json) {
    return Operario(
      dpi: json['dpi'],
      nombre: json['nombre'],
      rol: json['rol'],
      telefono: json['telefono'],
      contactoEmergencia: json['contacto_emergencia'],
      empresa: json['empresa'],
      fechaNacimiento: DateTime.parse(json['fecha_nacimiento']),
      direccion: json['direccion'],
      fechaInicioLabores: DateTime.parse(json['fecha_inicio_labores']),
      tipoLicencia: json['tipo_licencia'],
      numeroLicencia: json['numero_licencia'],
      estadoLaboral: json['estado_laboral'],
      idProyectoActual: json['id_proyecto_actual'],
      isChecked: json['isChecked']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dpi': dpi,
      'nombre': nombre,
      'rol': rol,
      'telefono': telefono,
      'contacto_emergencia': contactoEmergencia,
      'empresa': empresa,
      'fecha_nacimiento': fechaNacimiento.toIso8601String(),
      'direccion': direccion,
      'fecha_inicio_labores': fechaInicioLabores.toIso8601String(),
      'tipo_licencia': tipoLicencia,
      'numero_licencia': numeroLicencia,
      'estado_laboral': estadoLaboral,
      'id_proyecto_actual': idProyectoActual
    };
  }
}