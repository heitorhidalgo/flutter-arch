import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/salvar_carro_favorito_repository.dart';

class SalvarCarroFavoritoRepositoryImp implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carro) async {
    // Aqui ficaria a lógica real de chamar uma API, Firebase ou Local Storage
    // Exemplo simplificado:
    return carro.valor > 0;
  }
}