/*import 'package:flutter/material.dart';
import 'package:plataforma_limpia_y_verde/presentation/Repository/reporte.dart';

class ReporteProvider with ChangeNotifier {
  List<OperarioReporte> operarios = [];
  List<InsumoFijoReporte> insumosFijos = [];
  List<InsumoVariableReporte> insumosVariables = [];

  void toggleOperario(OperarioReporte operario) {
    final index = operarios.indexWhere((o) => o.dpi == operario.dpi);
    if (index != -1) {
      operarios[index].checked = !operarios[index].checked;
    } else {
      operarios.add(operario);
    }
    notifyListeners();
  }

  void toggleInsumoFijo(InsumoFijoReporte insumoFijo) {
    final index = insumosFijos.indexWhere((i) => i.insumo == insumoFijo.insumo);
    if (index != -1) {
      insumosFijos[index].checked = !insumosFijos[index].checked;
    } else {
      insumosFijos.add(insumoFijo);
    }
    notifyListeners();
  }

  void toggleInsumoVariable(InsumoVariableReporte insumoVariable) {
    final index = insumosVariables.indexWhere((i) => i.insumo == insumoVariable.insumo);
    if (index != -1) {
      insumosVariables[index].checked = !insumosVariables[index].checked;
    } else {
      insumosVariables.add(insumoVariable);
    }
    notifyListeners();
  }

  void clear() {
    operarios.clear();
    insumosFijos.clear();
    insumosVariables.clear();
    notifyListeners();
  }
}*/