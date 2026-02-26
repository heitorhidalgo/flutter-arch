import 'package:flutter_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor.dart';
import 'package:flutter_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import '../../domain/entities/carro_entity.dart';

class CarroController {
  // Injeção de dependência dos Use Cases (Regras de Negócio)
  final GetCarrosPorCorUseCase _getCarrosPorCorUseCase;
  final SalvarCarroFavoritoUseCase _salvarCarroFavoritoUseCase;

  CarroController(this._getCarrosPorCorUseCase, this._salvarCarroFavoritoUseCase) {
    // Chamada inicial para buscar um carro assim que o controller nasce
    getCarrosPorCor('vermelho');
  }

  late CarroEntity carro;

  // Método que a UI chamará para buscar dados
  void getCarrosPorCor(String cor) {
    carro = _getCarrosPorCorUseCase(cor);
  }

  // Método para salvar o carro nos favoritos
  Future<bool> saveFavoriteCar(CarroEntity carro) async {
    return await _salvarCarroFavoritoUseCase(carro);
  }
}