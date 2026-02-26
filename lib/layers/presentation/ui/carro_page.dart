import 'package:flutter/material.dart';
import 'package:flutter_arch/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:flutter_arch/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:flutter_arch/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:flutter_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_imp.dart';
import 'package:flutter_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import '../controllers/carro_controller.dart';

class CarroPage extends StatelessWidget {
  CarroPage({Key? key}) : super(key: key);
  // Injeção de dependência manual (Passo a passo de todas as camadas)
  final CarroController controller = CarroController(
    GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp(),
      ),
    ),
    SalvarCarroFavoritoUseCaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Text(controller.carro.placa), // Exibe a placa do carro buscado
      ),
    );
  }
}