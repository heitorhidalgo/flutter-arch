import 'package:flutter/material.dart';
import 'core/inject/inject.dart';
import 'layers/presentation/ui/pages/carro_page.dart';

void main() {
  Inject.init(); // Inicializa o container de dependências
  runApp(MaterialApp(
    home: CarroPage(),
  ));
}