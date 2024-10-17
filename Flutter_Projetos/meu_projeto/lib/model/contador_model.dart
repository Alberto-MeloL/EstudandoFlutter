import 'package:flutter/material.dart';

class ContadorModel with ChangeNotifier {
  int _valor = 0;

  int get valor => _valor;

  void incrementar() {
    _valor++;
    notifyListeners();  // Notifica os ouvintes sobre a mudança no valor
  }

  void decrementar() {
    _valor--;
    notifyListeners();
  }
}