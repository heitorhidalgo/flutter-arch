import '../../entities/carro_entity.dart';
import '../../repositories/salvar_carro_favorito_repository.dart';
import 'salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritoRepository _repository;

  SalvarCarroFavoritoUseCaseImp(this._repository);

  @override
  Future<bool> call(CarroEntity carro) async {
    // Regra de negócio do usecase: só salva se o valor for maior que zero
    if (carro.valor > 0) {
      return await _repository(carro);
    }
    return false;
  }
}