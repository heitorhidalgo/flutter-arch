import 'package:flutter_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor.dart';
import '../../domain/entities/carro_entity.dart';


class CarroController {
  final GetCarrosPorCorUseCase _getCarsByColorUseCase;
  CarroController(this._getCarsByColorUseCase);

  late CarroEntity carro;

  void getCarrosPorCor(String cor) {
    var result = _getCarsByColorUseCase(cor);

    // .fold(caso_erro, caso_sucesso)
    result.fold(
          (error) => print(error.toString()), // Trata a Exception vinda do Left
          (success) => carro = success,       // Atribui o CarroEntity vindo do Right
    );
  }
}