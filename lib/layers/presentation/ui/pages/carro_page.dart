import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../controllers/carro_controller.dart';

class CarroPage extends StatelessWidget {
  // Recupera a instância do controller automaticamente
  final CarroController controller = GetIt.I.get<CarroController>();

  CarroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Text(controller.carro.placa),
      ),
    );
  }
}