import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_fijo.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/insumo_variable.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/operario.dart';

class ReporteInspector{
  final String idReporteInspector; // El id del repodrte del reporte del inspector sera el del proyecto. 
  final DateTime fechaReporte = DateTime.now();
  final String nombreInspector = 'Inspector de prueba';
 final List<InsumoVariable>? reporteInsumoVariable; 
 final List<InsumoFijo>? reporteInsumoFijo; 
 final List<Operario>?  reporteOperario; 

 ReporteInspector({
  required this.idReporteInspector,
  required this.reporteInsumoVariable,
  required this.reporteInsumoFijo,
  required this.reporteOperario ,
 });

@override
String toString() {
    return
      '''   
          Fecha: $fechaReporte
            Nombre: $nombreInspector

Insumos Variables: $reporteInsumoVariable

Insumos Fijos: $reporteInsumoFijo

Operarios: $reporteOperario
      
      ''';

  }


}